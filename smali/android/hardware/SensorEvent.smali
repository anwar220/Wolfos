# classes.dex

.class public Landroid/hardware/SensorEvent;
.super Ljava/lang/Object;


# instance fields
.field public accuracy:I

.field public firstEventAfterDiscontinuity:Z

.field public sensor:Landroid/hardware/Sensor;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Sensor;IJ[F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput p2, p0, Landroid/hardware/SensorEvent;->accuracy:I

    iput-wide p3, p0, Landroid/hardware/SensorEvent;->timestamp:J

    iput-object p5, p0, Landroid/hardware/SensorEvent;->values:[F

    return-void
.end method
