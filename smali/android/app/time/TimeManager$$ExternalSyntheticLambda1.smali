# classes.dex

.class public final synthetic Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    invoke-interface {v0}, Landroid/app/time/TimeManager$TimeZoneDetectorListener;->onChange()V

    return-void
.end method
