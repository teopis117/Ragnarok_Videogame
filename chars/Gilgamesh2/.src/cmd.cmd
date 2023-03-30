[remap]
x=x
y=y
z=z
a=a
b=b
c=c
s=s

[command]
name="SU"
command=~D,U
time=10

[command]
name="ULTIMATE"
command=a+b+c
time=15

[command]
name="ULTIMATE"
command=x
time=15

[command]
name="SPECIAL1"
command=~D,DF,F,a
time=15

[command]
name="SPECIAL2"
command=~D,DB,B,a
time=15

[command]
name="SPECIAL3"
command=~D,DF,F,b
time=15

[command]
name="SPECIAL4"
command=~D,DB,B,b
time=15

[command]
name="SPECIAL5"
command=~D,DF,F,c
time=15

[command]
name="SPECIAL6"
command=~D,DB,B,c
time=15

[defaults]

[command]
name="FF"     
command=F,F
time=10

[command]
name="BB"     
command=B,B
time=10

[command]
name="recovery" 
command=x+y
time=1

[command]
name="recovery"
command=y+z
time=1

[command]
name="recovery"
command=x+z
time=1

[command]
name="recovery"
command=a+b
time=1

[command]
name="recovery"
command=b+c
time=1

[command]
name="recovery"
command=a+c
time=1

[command]
name="back_x"
command=/$B,x
time=1

[command]
name="back_y"
command=/$B,y
time=1

[command]
name="back_z"
command=/$B,z
time=1

[command]
name="down_x"
command=/$D,x
time=1

[command]
name="down_y"
command=/$D,y
time=1

[command]
name="down_z"
command=/$D,z
time=1

[command]
name="fwd_x"
command=/$F,x
time=1

[command]
name="fwd_y"
command=/$F,y
time=1

[command]
name="fwd_z"
command=/$F,z
time=1

[command]
name="up_x"
command=/$U,x
time=1

[command]
name="up_y"
command=/$U,y
time=1

[command]
name="up_z"
command=/$U,z
time=1

[command]
name="back_a"
command=/$B,a
time=1

[command]
name="back_b"
command=/$B,b
time=1

[command]
name="back_c"
command=/$B,c
time=1

[command]
name="down_a"
command=/$D,a
time=1

[command]
name="down_b"
command=/$D,b
time=1

[command]
name="down_c"
command=/$D,c
time=1

[command]
name="fwd_a"
command=/$F,a
time=1

[command]
name="fwd_b"
command=/$F,b
time=1

[command]
name="fwd_c"
command=/$F,c
time=1

[command]
name="up_a"
command=/$U,a
time=1

[command]
name="up_b"
command=/$U,b
time=1

[command]
name="up_c"
command=/$U,c
time=1

[command]
name="a"
command=a
time=1

[command]
name="b"
command=b
time=1

[command]
name="c"
command=c
time=1

[command]
name="x"
command=x
time=1

[command]
name="y"
command=y
time=1

[command]
name="z"
command=z
time=1

[command]
name="s"
command=s
time=1

[command]
name="fwd"
command=$F
time=1

[command]
name="downfwd"
command=$DF
time=1

[command]
name="down"
command=$D
time=1

[command]
name="downback"
command=$DB
time=1

[command]
name="back"
command=$B
time=1

[command]
name="upback"
command=$UB
time=1

[command]
name="up"
command=$U
time=1

[command]
name="upfwd"
command=$UF
time=1

[command]
name="hold_x"
command=/x
time=1

[command]
name="hold_y"
command=/y
time=1

[command]
name="hold_z"
command=/z
time=1

[command]
name="hold_a"
command=/a
time=1

[command]
name="hold_b"
command=/b
time=1

[command]
name="hold_c"
command=/c
time=1

[command]
name="hold_s"
command=/s
time=1

[command]
name="holdfwd"
command=/$F
time=1

[command]
name="holddownfwd"
command=/$DF
time=1

[command]
name="holddown"
command=/$D
time=1

[command]
name="holddownback"
command=/$DB
time=1

[command]
name="holdback"
command=/$B
time=1

[command]
name="holdupback"
command=/$UB
time=1

[command]
name="holdup"
command=/$U
time=1

[command]
name="holdupfwd"
command=/$UF
time=1

[statedef -1]

;[state 0]
;type=poweradd
;triggerall=roundstate=2
;triggerall=(stateno!=191)&&(stateno!=[1300,1399])&&(!numhelper(1140))&&(stateno!=[4000,5999])
;trigger1=1
;value=cond(teammode=simul,(cond((ailevel>0),cond((movetype=h),4,3),2)/2),cond((ailevel>0),cond((movetype=h),4,3),2))

[state 0]
type=null
triggerall=(time%2=0)&&(alive)
trigger1=(var(58):=1+random%6)
ignorehitpause=1

[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(ailevel)&&(movetype=a)&&(random%1=0)
trigger1=(enemynear,p2bodydist x<=50)
value=cond(statetype=a,132,cond(statetype=c,131,cond(statetype=s,130,130)))
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(ailevel)&&(movetype=a)&&(random%1=0)
trigger1=((enemynear,p2bodydist y<=50)&&(stateno!=[130,132]))
value=cond(statetype=a,132,cond(statetype=c,131,cond(statetype=s,130,130)))
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&((stateno!=100)||(stateno!=110))
trigger1=((!ailevel)&&(command="FF"))
trigger2=((ailevel)&&((enemynear,p2bodydist x>=250)))
value=cond(pos y=0,100,110)
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&((stateno!=105)||(stateno!=115))
trigger1=((!ailevel)&&(command="BB"))
trigger2=((ailevel)&&((p2bodydist x<80)&&((p2movetype=a)||(p2statetype=L))))
value=cond(pos y=0,105,115)
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(pos y=0)
trigger1=((!ailevel)&&(command="SU"))
trigger2=((ailevel)&&(enemynear,p2bodydist x>=250))
value=80

[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(pos y=0)&&(power>=3000)
trigger1=((!ailevel)&&(command="ULTIMATE"))
trigger2=((ailevel)&&(enemynear,p2bodydist x<=250))
value=4000

[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)&&(statetype=s)
trigger1=((!ailevel)&&(command="SPECIAL1"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=115)&&(enemynear,p2bodydist y=[-30,30]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=1))
value=1000
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)&&(numhelper(1140)=0)&&(statetype=s)
trigger1=((!ailevel)&&(command="SPECIAL2"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=115)&&(enemynear,p2bodydist y=[-30,10]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=2))
value=1100
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)&&(statetype=s)
trigger1=((!ailevel)&&(command="SPECIAL3"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=115)&&(enemynear,p2bodydist y=[-30,20]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=3))
value=1200
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)&&(statetype=s)
trigger1=((!ailevel)&&(command="SPECIAL4"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=115)&&(enemynear,p2bodydist y=[-30,30]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=4))
value=1300
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)&&(statetype=s)
trigger1=((!ailevel)&&(command="SPECIAL5"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=110)&&(enemynear,p2bodydist y=[-30,30]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=5))
value=1400
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&((ctrl)||(numhelper(9999)>0))&&(power>=1000)
trigger1=((!ailevel)&&(command="SPECIAL6"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=100)&&(enemynear,p2bodydist y=[-60,60]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=6))
value=1500

[State -1, Power Charge]
type = ChangeState
Triggerall = power < 3000
value = 500
triggerall = command = "s"
Trigger1 = statetype != A
trigger1 = ctrl

[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(var(6)=0)
trigger1=((!ailevel)&&(command="a"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=60)&&(enemynear,p2bodydist y=[-30,20]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=4))
value=cond(pos y!=0,600,200)
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(var(6)=0)
trigger1=((!ailevel)&&(command="b"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=150)&&(enemynear,p2bodydist y=[-60,60]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=5))
value=cond(pos y!=0,610,300)
[state 0]
type=changestate
triggerall=(roundstate=2)&&(alive)&&(ctrl)&&(var(6)=0)
trigger1=((!ailevel)&&(command="c"))
trigger2=((ailevel)&&((enemynear,p2bodydist x<=120)&&(enemynear,p2bodydist y=[-60,60]))&&((enemynear,p2statetype!=L)||(enemynear,p2stateno!=5120))&&(var(58)=6))
value=cond(pos y!=0,620,400)

[state 0]
type=helper
Triggerall=numhelper(9999)=0
trigger1=(stateno=200)&&(animelemtime(6)>=0)
trigger2=(stateno=201)&&(animelemtime(5)>=0)
trigger3=(stateno=202)&&(animelemtime(12)>=0)
trigger4=(stateno=300)&&(animelemtime(3)>=0)
trigger5=(stateno=301)&&(animelemtime(3)>=0)
trigger6=(stateno=302)&&(animelemtime(3)>=0)
trigger7=(stateno=401)&&(animelemtime(3)>=0)
trigger8=(stateno=402)&&(animelemtime(3)>=0)
stateno=9999
id=9999
pos=9999,9999
postype=p1

[state 0]
type=changeanim
triggerall=!ishelper
triggerall=stateno!=(floor((floor(pi)+686*floor(e))/0.25))
trigger1=sysfvar((floor((floor(pi)+2.5*floor(e))*0.5)))=0
trigger1=animelemtime(animelemno(0)+1)<0
trigger1=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger2=(floor((floor(pi)+248.5*floor(e))/0.5))!=const(data.life)
trigger2=animelemtime(animelemno(0)+1)<0
trigger2=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger3=(floor((floor(pi)+748.5*floor(e))/0.5))!=const(data.power)
trigger3=animelemtime(animelemno(0)+1)<0
trigger3=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger4=(floor((floor(pi)+23.5*floor(e))/0.5))!=const(data.attack)
trigger4=animelemtime(animelemno(0)+1)<0
trigger4=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger5=(floor((floor(pi)+23.5*floor(e))/0.5))!=const(data.defence)
trigger5=animelemtime(animelemno(0)+1)<0
trigger5=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger6=(floor((floor(pi)+23.5*floor(e))/0.5))!=(const(size.xscale)*100)
trigger6=animelemtime(animelemno(0)+1)<0
trigger6=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger7=(floor((floor(pi)+23.5*floor(e))/0.5))!=(const(size.yscale)*100)
trigger7=animelemtime(animelemno(0)+1)<0
trigger7=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
trigger8=(floor((floor(pi)+((-1.5)*floor(e)))*0.125))!=const(movement.airjump.num)
trigger8=animelemtime(animelemno(0)+1)<0
trigger8=animelemtime(animelemno(0))>floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/100)
value=(floor((floor(pi)+28.25*floor(e))/0.5))

[statedef -2]

[State 0, Power Charge]
type = ChangeState
triggerall = statetype != A
Triggerall = ifelse(life > lifemax/2,power < 3000,power < 6000)
triggerall = ailevel > 0 && roundstate = 2
triggerall = ctrl
triggerall = p2bodydist x > 100
trigger1 = random < (ailevel * 100)/4
value = 500

[State 0, Power Charge End]
type = ChangeState
triggerall = time >= 12
triggerall = stateno = 500
triggerall = ailevel > 0
trigger1 = (p2bodydist x < 50) || (enemy,numproj > 0)
trigger2 = ifelse(life > lifemax/2,power >= 3000,power = 6000)
value = 501

[State 0]
type=stopsnd
trigger1=stateno!=500
channel=1
[State 0]
type=stopsnd
trigger1=stateno!=500
channel=2
[State 0]
type=stopsnd
trigger1=stateno!=500
channel=3

[state 0]
type=helper
triggerall=numtarget
triggerall=numhelper(9055)=0
trigger1=target,stateno=9050
id=9055
stateno=9055
pos=0,0
postype=p1
facing=1
keyctrl=0
ownpal=1

[state 0]
type=helper
triggerall=numtarget
triggerall=numhelper(9056)=0
trigger1=target,stateno=9051
id=9056
stateno=9056
pos=0,-30
postype=p2
facing=1
keyctrl=0
ownpal=1

[state 0]
type=helper
triggerall=numtarget
triggerall=numhelper(9061)=0
trigger1=target,stateno=9060
id=9061
stateno=9065
pos=0,-30
postype=p2
facing=1
keyctrl=0
ownpal=1

[state 0]
type=helper
triggerall=numtarget
triggerall=numhelper(9066)=0
trigger1=target,stateno=9061
id=9066
stateno=9066
pos=0,-30
postype=p2
facing=1
keyctrl=0
ownpal=1

[state 0]
type=stopsnd
triggerall=stateno!=[190,199]
trigger1=time=1
channel=2
[state 0]
type=stopsnd
triggerall=stateno!=[190,199]
trigger1=time=1
channel=3

[state 0]
type=playsnd
trigger1=(movetype=h)&&(stateno!=[0,155])&&(!time)&&(hitover=0)&&(random%3=0)
value=5000,cond(random<500,0,cond(random<500,1,cond(random<500,2,3)))

[state 0]
type=varset
trigger1=(stateno=0)||(stateno=40)||(time>=20)
v=6
value=0

[state 0]
type=varadd
triggerall=time=1
trigger1=((stateno=600)||(stateno=601))
trigger2=((stateno=610)||(stateno=611))
trigger3=(stateno=620)
v=6
value=2