# classes4.dex

.class public final Lcom/android/server/os/TombstoneProtos$Thread;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Thread"
.end annotation


# static fields
.field public static final BACKTRACE_NOTE:J = 0x20900000007L

.field public static final CURRENT_BACKTRACE:J = 0x20b00000004L

.field public static final ID:J = 0x10500000001L

.field public static final MEMORY_DUMP:J = 0x20b00000005L

.field public static final NAME:J = 0x10900000002L

.field public static final PAC_ENABLED_KEYS:J = 0x10300000008L

.field public static final REGISTERS:J = 0x20b00000003L

.field public static final TAGGED_ADDR_CTRL:J = 0x10300000006L

.field public static final UNREADABLE_ELF_FILES:J = 0x20900000009L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Thread;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
