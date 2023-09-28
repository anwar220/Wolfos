# classes4.dex

.class public Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/SystemServerCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServiceCpuThreadTimes"
.end annotation


# instance fields
.field public binderThreadCpuTimesUs:[J

.field public threadCpuTimesUs:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
