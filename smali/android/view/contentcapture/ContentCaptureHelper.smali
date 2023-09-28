# classes2.dex

.class public final Landroid/view/contentcapture/ContentCaptureHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sDebug:Z

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/contentcapture/ContentCaptureHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains only static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultLoggingLevel()I
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public static getLoggingLevelAsString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "VERBOSE"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "DEBUG"

    return-object v0

    :pswitch_1d  #0x0
    const-string v0, "OFF"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
    .end packed-switch
.end method

.method public static getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_1b

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public static setLoggingLevel()V
    .registers 3

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    const-string v1, "content_capture"

    const-string v2, "logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    return-void
.end method

.method public static setLoggingLevel(I)V
    .registers 4

    sget-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting logging level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureHelper;->getLoggingLevelAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoggingLevel(): invalud level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3c  #0x2
    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    :pswitch_3e  #0x1
    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    return-void

    :pswitch_41  #0x0
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3e  #00000001
        :pswitch_3c  #00000002
    .end packed-switch
.end method

.method public static toList(Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_9
    return-object v0
.end method

.method public static toSet(Ljava/util/List;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_9
    return-object v0
.end method
