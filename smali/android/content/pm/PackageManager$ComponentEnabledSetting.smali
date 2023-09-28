# classes.dex

.class public final Landroid/content/pm/PackageManager$ComponentEnabledSetting;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentEnabledSetting"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mEnabledFlags:I

.field private final mEnabledState:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    iput p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    iput p3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_18

    move-object v3, v2

    goto :goto_20

    :cond_18
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    iput v4, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    const-class v6, Landroid/content/pm/PackageManager$EnabledState;

    invoke-static {v6, v2, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v5, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    const-class v6, Landroid/content/pm/PackageManager$EnabledFlags;

    invoke-static {v6, v2, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    iput p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    iput p3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getEnabledFlags()I
    .registers 2

    iget v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    return v0
.end method

.method public getEnabledState()I
    .registers 2

    iget v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isComponent()Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_20
    iget v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
