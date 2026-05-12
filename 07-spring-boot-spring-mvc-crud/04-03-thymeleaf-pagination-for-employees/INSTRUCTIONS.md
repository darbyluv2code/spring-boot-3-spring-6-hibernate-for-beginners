Steps to Add Pagination (Complete Step-by-Step Guide)

Repository Layer

Updated EmployeeRepository to support pagination:
```java
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    Page<Employee> findAllByOrderByLastNameAsc(Pageable pageable);
}
```

Service Layer

Updated EmployeeService interface:
```java
public interface EmployeeService {
    Page<Employee> findPaginated(int pageNo, int pageSize);
}
```

Implemented pagination in EmployeeServiceImpl:
```java


@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Override
    public Page<Employee> findPaginated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize, Sort.by("lastName").ascending());
        return employeeRepository.findAllByOrderByLastNameAsc(pageable);
    }
}
```
Controller Layer

Modified the /list endpoint to accept pagination parameters:
```java
@GetMapping("/list")
public String listEmployees(
    @RequestParam(name="page", required=false, defaultValue="1") int page,
    @RequestParam(name="size", required=false, defaultValue="5") int size,
    Model model) {

    Page<Employee> employeePage = employeeService.findPaginated(page, size);
    model.addAttribute("employeePage", employeePage);

    return "employees/list-employees";
}
```


Thymeleaf Template Changes (list-employees.html)

Updated table iteration to use `employeePage.content`:

```html
<tbody>
    <tr th:each="tempEmployee : ${employeePage.content}">
        <td th:text="${tempEmployee.firstName}"></td>
        <td th:text="${tempEmployee.lastName}"></td>
        <td th:text="${tempEmployee.email}"></td>
        <td>
            <a th:href="@{/employees/showFormForUpdate(employeeId=${tempEmployee.id})}" class="btn btn-info btn-sm">Update</a>
            <a th:href="@{/employees/delete(employeeId=${tempEmployee.id})}" class="btn btn-danger btn-sm"
               onclick="if (!confirm('Are you sure you want to delete this employee?')) return false">Delete</a>
        </td>
    </tr>
</tbody>
```
Added pagination controls with page-size preservation:
```html
<nav>
    <ul class="pagination">
        <li class="page-item" th:classappend="${employeePage.first} ? 'disabled'">
            <a class="page-link" th:href="@{/employees/list(page=${employeePage.number}, size=${employeePage.size})}">&laquo;</a>
        </li>
        <li class="page-item" th:each="i : ${#numbers.sequence(1, employeePage.totalPages)}"
            th:classappend="${employeePage.number + 1 == i} ? 'active'">
            <a class="page-link" th:href="@{/employees/list(page=${i}, size=${employeePage.size})}" th:text="${i}">1</a>
        </li>
        <li class="page-item" th:classappend="${employeePage.last} ? 'disabled'">
            <a class="page-link" th:href="@{/employees/(page=${employeePage.number + 2}, size=${employeePage.size})}">&raquo;</a>
        </li>
    </ul>
</nav>
```
Added dropdown form for users to select page size:
```html
<form th:action="@{/list}" method="get" class="mb-3">
    <label for="pageSize">Page Size:</label>
    <select id="pageSize" name="size" onchange="this.form.submit()">
        <option th:value="5" th:selected="${employeePage.size == 5}">5</option>
        <option th:value="10" th:selected="${employeePage.size == 10}">10</option>
        <option th:value="20" th:selected="${employeePage.size == 20}">20</option>
    </select>
    <input type="hidden" name="page" th:value="${employeePage.number + 1}" />
    <noscript><button type="submit">Apply</button></noscript>
</form>
```
