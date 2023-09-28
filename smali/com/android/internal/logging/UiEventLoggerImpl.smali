# classes4.dex

.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .registers 7

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v1, 0x5a

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 8

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz p4, :cond_12

    const/16 v1, 0x5a

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    goto :goto_17

    :cond_12
    if-lez v0, :cond_17

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 13

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v6

    if-lez v6, :cond_16

    if-eqz p4, :cond_16

    const/16 v0, 0x104

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    const/4 v5, 0x0

    move v1, v6

    move-object v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    goto :goto_1b

    :cond_16
    if-lez v6, :cond_1b

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .registers 12

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v6

    if-lez v6, :cond_10

    const/16 v0, 0x104

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, v6

    move-object v2, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    :cond_10
    return-void
.end method
