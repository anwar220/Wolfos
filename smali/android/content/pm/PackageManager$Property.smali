# classes.dex

.class public final Landroid/content/pm/PackageManager$Property;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_FLOAT:I = 0x2

.field private static final TYPE_INTEGER:I = 0x3

.field private static final TYPE_RESOURCE:I = 0x4

.field private static final TYPE_STRING:I = 0x5


# instance fields
.field private mBooleanValue:Z

.field private final mClassName:Ljava/lang/String;

.field private mFloatValue:F

.field private mIntegerValue:I

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/pm/PackageManager$Property$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$Property$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    nop

    nop

    iput-object p1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    iput-object p3, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFloat()F
    .registers 2

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    return v0
.end method

.method public getInteger()I
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    return v0
.end method

.method public isBoolean()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isFloat()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInteger()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isResourceId()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isString()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    if-eqz p1, :cond_9

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    move-object v0, p1

    goto :goto_e

    :cond_9
    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_e
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_46

    :cond_1b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_46

    :cond_26
    const/4 v2, 0x3

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_46

    :cond_31
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_46

    :cond_3c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_42

    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_42

    :cond_28
    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    :cond_31
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    :cond_3a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method
