# classes3.dex

.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$1:Landroid/telephony/BarringInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/BarringInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/BarringInfo;

    invoke-static {v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$62(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method