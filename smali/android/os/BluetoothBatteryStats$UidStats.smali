# classes3.dex

.class public Landroid/os/BluetoothBatteryStats$UidStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BluetoothBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidStats"
.end annotation


# instance fields
.field public final rxTimeMs:J

.field public final scanResultCount:I

.field public final scanTimeMs:J

.field public final txTimeMs:J

.field public final uid:I

.field public final unoptimizedScanTimeMs:J


# direct methods
.method static bridge synthetic -$$Nest$mwriteToParcel(Landroid/os/BluetoothBatteryStats$UidStats;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BluetoothBatteryStats$UidStats;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(IJJIJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    iput-wide p2, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    iput-wide p4, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    iput p6, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    iput-wide p7, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    iput-wide p9, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BluetoothBatteryStats$UidStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BluetoothBatteryStats$UidStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    iget v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStats{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unoptimizedScanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanResultCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
