# classes4.dex

.class public final Lcom/android/server/os/TombstoneProtos$HeapObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeapObject"
.end annotation


# static fields
.field public static final ADDRESS:J = 0x10400000001L

.field public static final ALLOCATION_BACKTRACE:J = 0x20b00000004L

.field public static final ALLOCATION_TID:J = 0x10400000003L

.field public static final DEALLOCATION_BACKTRACE:J = 0x20b00000006L

.field public static final DEALLOCATION_TID:J = 0x10400000005L

.field public static final SIZE:J = 0x10400000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$HeapObject;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
