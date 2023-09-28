# classes.dex

.class public Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;
.super Landroid/app/RemoteServiceException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadForegroundServiceNotificationException"
.end annotation


# static fields
.field public static final TYPE_ID:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method
