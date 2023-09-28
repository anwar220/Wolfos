# classes4.dex

.class public Lcom/android/internal/os/RoSystemProperties;
.super Ljava/lang/Object;


# static fields
.field public static final CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

.field public static final CONFIG_AVOID_GFX_ACCEL:Z

.field public static final CONFIG_LOW_RAM:Z

.field public static final CONFIG_SMALL_BATTERY:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

.field public static final CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

.field public static final CRYPTO_ENCRYPTED:Z

.field public static final CRYPTO_FILE_ENCRYPTED:Z

.field public static final CRYPTO_STATE:Landroid/sysprop/CryptoProperties$state_values;

.field public static final CRYPTO_TYPE:Landroid/sysprop/CryptoProperties$type_values;

.field public static final DEBUGGABLE:Z

.field public static final FACTORYTEST:I

.field public static final FW_SYSTEM_USER_SPLIT:Z

.field public static final MULTIUSER_HEADLESS_SYSTEM_USER:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    nop

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    nop

    const-string/jumbo v0, "ro.factorytest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    nop

    const-string/jumbo v0, "ro.control_privapp_permissions"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    invoke-static {}, Landroid/sysprop/HdmiProperties;->forward_volume_keys_when_system_audio_mode_off()Ljava/util/Optional;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    nop

    const-string/jumbo v3, "ro.config.avoid_gfx_accel"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    nop

    const-string/jumbo v3, "ro.config.low_ram"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    nop

    const-string/jumbo v3, "ro.config.small_battery"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    nop

    const-string/jumbo v3, "ro.fw.system_user_split"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    nop

    const-string/jumbo v3, "ro.fw.mu.headless_system_user"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-static {}, Landroid/sysprop/CryptoProperties;->state()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sysprop/CryptoProperties$state_values;

    sput-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {}, Landroid/sysprop/CryptoProperties;->type()Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Landroid/sysprop/CryptoProperties$type_values;->NONE:Landroid/sysprop/CryptoProperties$type_values;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sysprop/CryptoProperties$type_values;

    sput-object v4, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Landroid/sysprop/CryptoProperties$type_values;

    sget-object v5, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    if-ne v3, v5, :cond_8d

    move v3, v2

    goto :goto_8e

    :cond_8d
    move v3, v1

    :goto_8e
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    sget-object v3, Landroid/sysprop/CryptoProperties$type_values;->FILE:Landroid/sysprop/CryptoProperties$type_values;

    if-ne v4, v3, :cond_96

    move v3, v2

    goto :goto_97

    :cond_96
    move v3, v1

    :goto_97
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    nop

    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    nop

    const-string v4, "enforce"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-nez v3, :cond_b1

    if-nez v0, :cond_b1

    move v1, v2

    :cond_b1
    sput-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
