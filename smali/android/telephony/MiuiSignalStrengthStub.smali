# classes3.dex

.class public Landroid/telephony/MiuiSignalStrengthStub;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiuiSignalStrengthStub"

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field private static volatile sInstance:Landroid/telephony/IMiuiSignalStrength;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "android.telephony.MiuiSignalStrengthImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IMiuiSignalStrength;

    sput-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiSignalStrengthStub;->logi(Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiSignalStrengthStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;

    invoke-interface {v1, p0, p1, p2}, Landroid/telephony/IMiuiSignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I

    move-result v0

    :cond_b
    return v0
.end method
