# classes.dex

.class final enum Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$LinkQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field private static sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "ULTRA_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v3, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v5, "STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v5, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v7, "MEDIUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v7, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v9, "LOW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v9, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v11, "INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 3

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_a

    aget-object v0, v0, p0

    return-object v0

    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 2

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method
