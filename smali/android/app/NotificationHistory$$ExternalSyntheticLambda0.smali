# classes.dex

.class public final synthetic Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/app/NotificationHistory$HistoricalNotification;

    check-cast p2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-static {p1, p2}, Landroid/app/NotificationHistory;->lambda$addNotificationsToWrite$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I

    move-result p1

    return p1
.end method
