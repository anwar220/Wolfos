# classes3.dex

.class Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CustomDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .registers 12

    const-class v0, Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    new-instance v2, Landroid/service/autofill/CustomDescription$Builder;

    invoke-direct {v2, v0}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    if-eqz v3, :cond_2d

    const-class v4, Landroid/service/autofill/InternalTransformation;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalTransformation;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_2d

    aget v7, v3, v6

    aget-object v8, v4, v6

    invoke-virtual {v2, v7, v8}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_2d
    const-class v4, Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalValidator;

    if-eqz v4, :cond_4d

    const-class v5, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {p1, v1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/autofill/BatchUpdates;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_41
    if-ge v7, v6, :cond_4d

    aget-object v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v2, v8, v9}, Landroid/service/autofill/CustomDescription$Builder;->batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    if-eqz v5, :cond_69

    const-class v6, Landroid/service/autofill/InternalOnClickAction;

    invoke-virtual {p1, v1, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/autofill/InternalOnClickAction;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5d
    if-ge v7, v6, :cond_69

    aget v8, v5, v7

    aget-object v9, v1, v7

    invoke-virtual {v2, v8, v9}, Landroid/service/autofill/CustomDescription$Builder;->addOnClickAction(ILandroid/service/autofill/OnClickAction;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_69
    invoke-virtual {v2}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/CustomDescription;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method
