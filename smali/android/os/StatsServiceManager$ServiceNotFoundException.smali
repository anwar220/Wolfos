# classes3.dex

.class public Landroid/os/StatsServiceManager$ServiceNotFoundException;
.super Landroid/os/ServiceManager$ServiceNotFoundException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceNotFoundException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    return-void
.end method
