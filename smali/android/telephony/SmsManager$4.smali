# classes3.dex

.class Landroid/telephony/SmsManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$deliveryIntents:Ljava/util/List;

.field final synthetic val$destinationAddress:Ljava/lang/String;

.field final synthetic val$expectMore:Z

.field final synthetic val$finalPriority:I

.field final synthetic val$finalValidity:I

.field final synthetic val$parts:Ljava/util/List;

.field final synthetic val$persistMessage:Z

.field final synthetic val$scAddress:Ljava/lang/String;

.field final synthetic val$sentIntents:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 11

    iput-object p1, p0, Landroid/telephony/SmsManager$4;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iput-object p5, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iput-object p6, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iput-boolean p7, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iput p8, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iput-boolean p9, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iput p10, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method public onSuccess(I)V
    .registers 16

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iget-object v9, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iget-boolean v10, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iget v11, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iget-boolean v12, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iget v13, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I

    move-object v1, v0

    move v2, p1

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    goto :goto_45

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    :goto_45
    return-void
.end method