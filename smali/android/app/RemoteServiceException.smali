# classes.dex

.class public Landroid/app/RemoteServiceException;
.super Landroid/util/AndroidRuntimeException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteServiceException$CrashedByAdbException;,
        Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;,
        Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;,
        Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;,
        Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
