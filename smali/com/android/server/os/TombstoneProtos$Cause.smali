# classes4.dex

.class public final Lcom/android/server/os/TombstoneProtos$Cause;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Cause"
.end annotation


# static fields
.field public static final HUMAN_READABLE:J = 0x10900000001L

.field public static final MEMORY_ERROR:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Cause;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
