# classes.dex

.class public final synthetic Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 3

    iget-object v0, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    invoke-static {v0, v1}, Landroid/app/time/TimeManager;->lambda$addTimeZoneDetectorListener$0(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    return-void
.end method
