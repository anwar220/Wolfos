# classes3.dex

.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/PhoneStateListener;

    iput p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/PhoneStateListener;

    iget v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onLegacyCallStateChanged$10(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    return-void
.end method
