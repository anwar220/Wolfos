# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;->f$0:Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    iput-boolean p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;->f$0:Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    iget-boolean v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onUserMobileDataStateChanged$32(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    return-void
.end method
