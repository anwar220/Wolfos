# classes4.dex

.class public Lcom/android/internal/os/KernelCpuThreadReader$Injector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUidForPid(I)I
    .registers 3

    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    return v0
.end method
