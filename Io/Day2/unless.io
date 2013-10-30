unless := method(
(call sender doMessage(call message argAt(0))) ifFalse(
call sender doMessage(call message argAt(1))) ifTrue(
call sender doMessage(call message argAt(2)))
)
 

unless(1 == 2, write("One is not two\n"), write("one is two\n"))
