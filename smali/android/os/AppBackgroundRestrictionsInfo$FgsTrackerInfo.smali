# classes3.dex

.class public final Landroid/os/AppBackgroundRestrictionsInfo$FgsTrackerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBackgroundRestrictionsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FgsTrackerInfo"
.end annotation


# static fields
.field public static final FGS_DURATION:J = 0x10300000002L

.field public static final FGS_NOTIFICATION_VISIBLE:J = 0x10800000001L


# instance fields
.field final synthetic this$0:Landroid/os/AppBackgroundRestrictionsInfo;


# direct methods
.method public constructor <init>(Landroid/os/AppBackgroundRestrictionsInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/os/AppBackgroundRestrictionsInfo$FgsTrackerInfo;->this$0:Landroid/os/AppBackgroundRestrictionsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
