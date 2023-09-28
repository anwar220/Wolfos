# classes4.dex

.class public Lcom/android/server/AppWidgetBackupBridge;
.super Ljava/lang/Object;


# static fields
.field private static sAppWidgetService:Lcom/android/server/WidgetBackupProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetParticipants(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static getWidgetState(Ljava/lang/String;I)[B
    .registers 3

    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p1}, Lcom/android/server/WidgetBackupProvider;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static register(Lcom/android/server/WidgetBackupProvider;)V
    .registers 1

    sput-object p0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    return-void
.end method

.method public static restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 4

    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/WidgetBackupProvider;->restoreWidgetState(Ljava/lang/String;[BI)V

    :cond_7
    return-void
.end method

.method public static systemRestoreFinished(I)V
    .registers 2

    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->systemRestoreFinished(I)V

    :cond_7
    return-void
.end method

.method public static systemRestoreStarting(I)V
    .registers 2

    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->systemRestoreStarting(I)V

    :cond_7
    return-void
.end method
