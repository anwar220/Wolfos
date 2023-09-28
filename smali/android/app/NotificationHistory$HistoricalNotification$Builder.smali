# classes.dex

.class public final Landroid/app/NotificationHistory$HistoricalNotification$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory$HistoricalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mPackage:Ljava/lang/String;

.field private mPostedTimeMs:J

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUid:I

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>(Landroid/app/NotificationHistory$HistoricalNotification-IA;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelName(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUid(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUserId(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPostedTimeMs(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmText(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIcon(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmConversationId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    return-object p0
.end method

.method public setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    return-object p0
.end method
