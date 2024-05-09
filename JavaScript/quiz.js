let users = 
[   {id: 123, job: undefined},
    {id: 111, job: "Analyst"},
    {id: 112, job: "Analyst"},
    {id: 113, job: undefined},
    {id: 113, job: "Jobless"}
]
const fun = (x) => x * x;
users = users.filter((x) => x.job != undefined);
users = users.map((x) => ({...x, Salary: fun(x.id)}));

const temp = users.filter((x) => x.job == "Analyst")
const avgGPA = temp.reduce(((sum, x) => x.Salary+sum),0) / temp.length;

//const avgGPA = users.filter((x) => x.job == "Analyst").reduce(((sum, x) => x.Salary+sum),0) / avgGPA.length;

console.log(avgGPA)
// do you rmb waht we filter?
// const avgGPA = users.filter((current) => current.job == "Analyst").map(total) => (total + users.salary)/users.length));