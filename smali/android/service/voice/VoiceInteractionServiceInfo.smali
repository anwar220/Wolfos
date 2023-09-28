# classes3.dex

.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private mHotwordDetectionService:Ljava/lang/String;

.field private mParseError:Ljava/lang/String;

.field private mRecognitionService:Ljava/lang/String;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSessionService:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSupportsAssist:Z

.field private mSupportsLaunchFromKeyguard:Z

.field private mSupportsLocalInteraction:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-void

    :cond_12
    :try_start_12
    const-string v0, "android.voice_interaction"

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_18} :catch_cd
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_cd

    if-nez v0, :cond_37

    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.voice_interaction meta-data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_c1

    if-eqz v0, :cond_36

    :try_start_33
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_36} :catch_cd
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_36} :catch_cd

    :cond_36
    return-void

    :cond_37
    :try_start_37
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_41
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4d

    if-eq v4, v5, :cond_4d

    goto :goto_41

    :cond_4d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "voice-interaction-service"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    const-string v5, "Meta-data does not start with voice-interaction-service tag"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_c1

    if-eqz v0, :cond_63

    :try_start_60
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_63} :catch_cd
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_63} :catch_cd

    :cond_63
    return-void

    :cond_64
    :try_start_64
    sget-object v7, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    const/4 v6, 0x4

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    const/4 v6, 0x5

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez v5, :cond_aa

    const-string v5, "No sessionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_a4
    .catchall {:try_start_64 .. :try_end_a4} :catchall_c1

    if-eqz v0, :cond_a9

    :try_start_a6
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_a9} :catch_cd
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_a9} :catch_cd

    :cond_a9
    return-void

    :cond_aa
    :try_start_aa
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez v5, :cond_b8

    const-string v5, "No recognitionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_c1

    if-eqz v0, :cond_b7

    :try_start_b4
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b7
    return-void

    :cond_b8
    if-eqz v0, :cond_bd

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_bd} :catch_cd
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bd} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b4 .. :try_end_bd} :catch_cd

    :cond_bd
    nop

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void

    :catchall_c1
    move-exception v1

    if-eqz v0, :cond_cc

    :try_start_c4
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_cc

    :catchall_c8
    move-exception v2

    :try_start_c9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cc
    :goto_cc
    throw v1
    :try_end_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c9 .. :try_end_cd} :catch_cd
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cd} :catch_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c9 .. :try_end_cd} :catch_cd

    :catch_cd
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing voice interation service meta-data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string v1, "VoiceInteractionServiceInfo"

    const-string v2, "error parsing voice interaction service meta-data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0080

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_f

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    goto :goto_10

    :catch_f
    move-exception v0

    :goto_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHotwordDetectionService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    return-object v0
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsAssist()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method

.method public getSupportsLocalInteraction()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    return v0
.end method
