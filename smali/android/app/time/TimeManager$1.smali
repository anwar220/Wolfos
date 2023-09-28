# classes.dex

.class Landroid/app/time/TimeManager$1;
.super Landroid/app/time/ITimeZoneDetectorListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/time/TimeManager;->addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/time/TimeManager;


# direct methods
.method constructor <init>(Landroid/app/time/TimeManager;)V
    .registers 2

    iput-object p1, p0, Landroid/app/time/TimeManager$1;->this$0:Landroid/app/time/TimeManager;

    invoke-direct {p0}, Landroid/app/time/ITimeZoneDetectorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 2

    iget-object v0, p0, Landroid/app/time/TimeManager$1;->this$0:Landroid/app/time/TimeManager;

    invoke-static {v0}, Landroid/app/time/TimeManager;->-$$Nest$mnotifyTimeZoneDetectorListeners(Landroid/app/time/TimeManager;)V

    return-void
.end method
