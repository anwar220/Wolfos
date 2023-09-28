# classes.dex

.class final Landroid/app/ActivityThread$DumpResourcesData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpResourcesData"
.end annotation


# instance fields
.field public fd:Landroid/os/ParcelFileDescriptor;

.field public finishCallback:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
