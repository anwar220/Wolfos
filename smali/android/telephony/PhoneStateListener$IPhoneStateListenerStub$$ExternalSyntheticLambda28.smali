# classes3.dex

.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$1:Landroid/telephony/SignalStrength;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;->f$0:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;->f$1:Landroid/telephony/SignalStrength;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;->f$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;->f$1:Landroid/telephony/SignalStrength;

    invoke-static {v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$18(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method
