# classes.dex

.class public final Landroid/hardware/TriggerEvent;
.super Ljava/lang/Object;


# instance fields
.field public sensor:Landroid/hardware/Sensor;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/TriggerEvent;->values:[F

    return-void
.end method
