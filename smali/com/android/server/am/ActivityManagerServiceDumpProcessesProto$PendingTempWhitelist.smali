# classes4.dex

.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$PendingTempWhitelist;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingTempWhitelist"
.end annotation


# static fields
.field public static final CALLING_UID:J = 0x10500000006L

.field public static final DURATION_MS:J = 0x10300000002L

.field public static final REASON_CODE:J = 0x10500000005L

.field public static final TAG:J = 0x10900000003L

.field public static final TARGET_UID:J = 0x10500000001L

.field public static final TYPE:J = 0x10500000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$PendingTempWhitelist;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
