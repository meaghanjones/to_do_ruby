
require("rspec")
require("to_do.rb")

describe(Task) do
  before() do
    Task.clear()
  end

  describe("Task") do
    describe("#description") do
      it("lets you add a new task or description") do
        test_task = Task.new("close blinds")
        expect(test_task.description()).to(eq("close blinds"))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Task.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds the task to an array and saves it") do
        test_task = Task.new("close blinds")
        test_task.save()
        expect(Task.all()).to(eq([test_task]))
      end
    end

    describe(".clear") do
      it("empties out the class array all_tasks") do
        Task.new("remember lunch").save()
        Task.clear()
        expect(Task.all()).to(eq([]))
      end
    end
  end
end
