# classes3.dex

.class Landroid/telephony/SmsManager$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$configOverrides:Landroid/os/Bundle;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$locationUrl:Ljava/lang/String;

.field final synthetic val$m:Landroid/telephony/MmsManager;

.field final synthetic val$messageId:J

.field final synthetic val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 9

    iput-object p1, p0, Landroid/telephony/SmsManager$7;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$7;->val$m:Landroid/telephony/MmsManager;

    iput-object p3, p0, Landroid/telephony/SmsManager$7;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/telephony/SmsManager$7;->val$locationUrl:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$7;->val$configOverrides:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    iput-wide p7, p0, Landroid/telephony/SmsManager$7;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public onSuccess(I)V
    .registers 10

    iget-object v0, p0, Landroid/telephony/SmsManager$7;->val$m:Landroid/telephony/MmsManager;

    iget-object v2, p0, Landroid/telephony/SmsManager$7;->val$contentUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telephony/SmsManager$7;->val$locationUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$7;->val$configOverrides:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Landroid/telephony/SmsManager$7;->val$messageId:J

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/MmsManager;->sendMultimediaMessage(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    return-void
.end method
