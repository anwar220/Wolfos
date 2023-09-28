# classes2.dex

.class public final Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$InteractiveAppType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final INTERACTIVE_APP_TYPE_ATSC:I = 0x2

.field public static final INTERACTIVE_APP_TYPE_GINGA:I = 0x4

.field public static final INTERACTIVE_APP_TYPE_HBBTV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvInteractiveAppServiceInfo"

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-interactive-app"


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private mTypes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_48

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_40

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p1, v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->toTypesFlag(Ljava/util/List;)I

    move-result v5

    iput v5, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return-void

    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid component. Can\'t find the service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_6
    const-string v2, "android.media.tv.interactive.app"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_c} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_9c

    if-eqz v2, :cond_76

    :try_start_e
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    :goto_18
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_24

    const/4 v5, 0x2

    if-eq v6, v5, :cond_24

    goto :goto_18

    :cond_24
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "tv-interactive-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    sget-object v7, Lcom/android/internal/R$styleable;->TvInteractiveAppService:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    array-length v10, v9

    :goto_3c
    if-ge v8, v10, :cond_4f

    aget-object v11, v9, v8

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_4f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_74

    if-eqz v2, :cond_57

    :try_start_54
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_57} :catch_9c

    :cond_57
    nop

    return-void

    :cond_59
    :try_start_59
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-interactive-app tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_74
    move-exception v3

    goto :goto_91

    :cond_76
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.interactive.app meta-data found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_91
    .catchall {:try_start_59 .. :try_end_91} :catchall_74

    :goto_91
    if-eqz v2, :cond_9b

    :try_start_93
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v4

    :try_start_98
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9b
    :goto_9b
    throw v3
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_9c} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No resources found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_b8
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static toTypesFlag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_46

    :cond_19
    goto :goto_37

    :sswitch_1a
    const-string v4, "hbbtv"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    goto :goto_37

    :sswitch_24
    const-string v4, "ginga"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x2

    goto :goto_37

    :sswitch_2e
    const-string v4, "atsc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    :goto_37
    packed-switch v3, :pswitch_data_54

    goto :goto_44

    :pswitch_3b  #0x2
    or-int/lit8 v0, v0, 0x4

    goto :goto_44

    :pswitch_3e  #0x1
    or-int/lit8 v0, v0, 0x2

    goto :goto_44

    :pswitch_41  #0x0
    or-int/lit8 v0, v0, 0x1

    nop

    :goto_44
    goto :goto_5

    :cond_45
    return v0

    :sswitch_data_46
    .sparse-switch
        0x2dd9c3 -> :sswitch_2e
        0x5dcd9a6 -> :sswitch_24
        0x5e7972a -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSupportedTypes()I
    .registers 2

    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
