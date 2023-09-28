# classes.dex

.class public Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
.super Landroid/app/RemoteServiceException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundServiceDidNotStartInTimeException"
.end annotation


# static fields
.field private static final KEY_SERVICE_CLASS_NAME:Ljava/lang/String; = "serviceclassname"

.field public static final TYPE_ID:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serviceclassname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_b

    :cond_4
    const-string/jumbo v0, "serviceclassname"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method
