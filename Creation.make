# File: Creation.make 
# Target: Creation
# Sources: Creation.p Creation.r
# Created: Wednesday, June 6, 1990 8:38:51 AM

OBJECTS = Creation.p.o

Creation ƒƒ Creation.make Creation.r 
    Rez Creation.r -append -o Creation

Creation ƒƒ Creation.make {OBJECTS}
    Link -w -t APPL -c '????' -sym on -mf ∂
        {OBJECTS} ∂
        "{Libraries}"Runtime.o ∂
        "{Libraries}"Interface.o ∂
        "{PLibraries}"SANELib.o ∂
        "{PLibraries}"PasLib.o ∂
        -o Creation
		
Creation.p.o ƒ Creation.make Creation.p 
    Pascal -sym on Creation.p