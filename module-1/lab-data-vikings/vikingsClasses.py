
# Soldier


class Soldier:
    def __init__(self,health,strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
            self.health -= damage
            
        


# Viking

class Viking(Soldier):
    def __init__(self,name,health,strength):
        self.health = health
        self.strength = strength
        self.name = name

    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health-= damage 
        if self.health > damage:
            return (f"{self.name} has received {damage} points of damage")  
        else:
            return (f"{self.name} has died in act of combat")    

    def battleCry(self):
        return (f"Odin Owns You All!")        
    

# Saxon


class Saxon(Soldier):
    def __init__(self,health,strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return (f"A Saxon has received {damage} points of damage")
        else:
            return (f"A Saxon has died in combat")   
    

# War


class War:
    def __init__(self):
        vikingArmy()
        saxonArmy()

    def addViking(self,Viking):
        vikingArmy += 1
        return

    def addSaxon(self,Saxon):
        saxonArmy += 1
        return

    def vikingAttack(self):
        self.health(Saxon) -= self.strength(Viking)
        if self.health(Saxon)<=0:
            saxonArmy-=1
        return receiveDamage()

    def saxonAttack(self):
        health(Viking) -= self.strength(Saxon)
        if self.health(Viking)<=0:
            vikingArmy-=1
        return receiveDamage() 

    def showStatus(self):
        if saxonArmy()==0:
            return f"Vikings have won the war of the century!"

        if vikingArmy()==0:
            return f"Saxons have fought for their life and survive another day..."

        else:
            return f"Vikings and Saxons are still in the thick of battle."   
                 

          





 
    
