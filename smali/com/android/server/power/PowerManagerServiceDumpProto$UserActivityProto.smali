# classes4.dex

.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$UserActivityProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserActivityProto"
.end annotation


# static fields
.field public static final DISPLAY_GROUP_ID:J = 0x10500000006L

.field public static final IS_SCREEN_BRIGHT:J = 0x10800000001L

.field public static final IS_SCREEN_DIM:J = 0x10800000002L

.field public static final IS_SCREEN_DREAM:J = 0x10800000003L

.field public static final LAST_USER_ACTIVITY_TIME_MS:J = 0x10300000004L

.field public static final LAST_USER_ACTIVITY_TIME_NO_CHANGE_LIGHTS_MS:J = 0x10300000005L


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceDumpProto$UserActivityProto;->this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
