# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$CallAttributesListener;

.field public final synthetic f$1:Landroid/telephony/CallAttributes;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$0:Landroid/telephony/TelephonyCallback$CallAttributesListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$1:Landroid/telephony/CallAttributes;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$0:Landroid/telephony/TelephonyCallback$CallAttributesListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$1:Landroid/telephony/CallAttributes;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallAttributesChanged$48(Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V

    return-void
.end method
