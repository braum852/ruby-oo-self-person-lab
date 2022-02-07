class Person

attr_reader :name
attr_accessor :bank_account, :hygiene, :happiness

def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end

def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
end

def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
end

def happy?
    @happiness > 7
end

def clean?
@hygiene > 7
end

def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"

    ##increments bank_account by salary using the bank account default 
    ##method from attr_accessor
end


def take_bath
self.hygiene += 4
"♪ Rub-a-dub just relaxing in the tub ♫"
##increments hygiene by 4 using the hygiene method def hygiene=(num)
end

def work_out
self.hygiene -= 3
self.happiness += 2
"♪ another one bites the dust ♫"
end

def call_friend(friend)
    [self, friend].each {|x| x.happiness += 3}
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    ##friend argument will be a person name outside of known names in
    ##this function. To pass the happiness increase, the happiness
    ##method is called upon by passing both friend argument and self - 
    ##the name recognised in function as the first person,
    ##and both arguments passed into x via the .each method,
    ##to receives the happiness method with increment.
    ##String interpolation is used - note the values uses the .name
    ##as method in this class has defined name
end

def start_conversation(person, topic)
##Finally, the start_conversation method should accept two arguments, 
##the person to start a conversation with and the topic of conversation.
 victims = [self, person]
    if topic == "politics"
        victims.each {|x| x.happiness -= 2}
        ##If the topic is politics, both people get sadder 
        first = "partisan"
        second = "lobbyist"
    elsif topic == "weather"
            victims.each {|x| x.happiness += 1}
            ##If the topic is weather, both people get a little happier
            first = "sun"
            second = "rain"
    end
    first ||= "blah"
    second ||= "blah"
    string = "blah blah #{first} blah #{second}"
end


##and the method returns "blah blah partisan blah lobbyist".  

##and the method returns "blah blah sun blah rain".

##If the topic is not politics or weather, their happiness points 
##don't change and the method returns "blah blah blah blah blah"

end