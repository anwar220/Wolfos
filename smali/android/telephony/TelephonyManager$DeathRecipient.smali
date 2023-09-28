# classes3.dex

.class Landroid/telephony/TelephonyManager$DeathRecipient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/TelephonyManager$DeathRecipient-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$DeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->-$$Nest$smresetServiceCache()V

    return-void
.end method
