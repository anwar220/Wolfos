# classes4.dex

.class public final Lcom/android/server/os/TombstoneProtos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/TombstoneProtos$LogMessage;,
        Lcom/android/server/os/TombstoneProtos$LogBuffer;,
        Lcom/android/server/os/TombstoneProtos$FD;,
        Lcom/android/server/os/TombstoneProtos$MemoryMapping;,
        Lcom/android/server/os/TombstoneProtos$MemoryDump;,
        Lcom/android/server/os/TombstoneProtos$ArmMTEMetadata;,
        Lcom/android/server/os/TombstoneProtos$BacktraceFrame;,
        Lcom/android/server/os/TombstoneProtos$Thread;,
        Lcom/android/server/os/TombstoneProtos$Register;,
        Lcom/android/server/os/TombstoneProtos$Cause;,
        Lcom/android/server/os/TombstoneProtos$MemoryError;,
        Lcom/android/server/os/TombstoneProtos$HeapObject;,
        Lcom/android/server/os/TombstoneProtos$Signal;,
        Lcom/android/server/os/TombstoneProtos$Tombstone;
    }
.end annotation


# static fields
.field public static final ARM32:I = 0x0

.field public static final ARM64:I = 0x1

.field public static final X86:I = 0x2

.field public static final X86_64:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
