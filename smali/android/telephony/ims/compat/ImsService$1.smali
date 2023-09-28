# classes3.dex

.class Landroid/telephony/ims/compat/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/compat/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/compat/ImsService;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateEmergencyMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public removeImsFeature(II)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeature(Landroid/telephony/ims/compat/ImsService;II)V

    return-void
.end method
