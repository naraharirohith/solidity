pragma solidity 0.8.1;

contract todolist {
    
    uint public taskCount = 0;
    
    struct task{
        uint id;
        string taskName;
        bool completed;
    }
    
    mapping(uint => task) public tasks;
    
    function addTask(string memory _taskName) public{
        taskCount++;
        tasks[taskCount] = task(taskCount , _taskName , false);
    }
    
    function TaskCompleted(uint _id) public{
        task memory _task = tasks[_id];
        _task.completed = true;
        tasks[_id] = _task; 
    }
    
}
