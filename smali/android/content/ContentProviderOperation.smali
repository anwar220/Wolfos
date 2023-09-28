# classes.dex

.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;,
        Landroid/content/ContentProviderOperation$BackReference;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_CALL:I = 0x5

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field private final mArg:Ljava/lang/String;

.field private final mExceptionAllowed:Z

.field private final mExpectedCount:Ljava/lang/Integer;

.field private final mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethod:Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mYieldAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v1

    :goto_2e
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_44

    :cond_42
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    :goto_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v2, :cond_55

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_57

    :cond_55
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    :goto_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    :cond_62
    move-object v2, v1

    :goto_63
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7b
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_87

    move v1, v2

    goto :goto_88

    :cond_87
    move v1, v4

    :goto_88
    iput-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_92

    :cond_91
    move v2, v4

    :goto_92
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_15

    :cond_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_15
    move-object v1, v2

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v2, :cond_35

    if-eqz v1, :cond_25

    move-object v2, v1

    goto :goto_2a

    :cond_25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_2a
    move-object v1, v2

    nop

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_35
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_48

    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    return-object v3

    :cond_48
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned no result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_69
    const/4 v3, 0x5

    if-ne v2, v3, :cond_80

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/os/Bundle;)V

    return-object v3

    :cond_80
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8b

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_12b

    :cond_8b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_96

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_12b

    :cond_96
    const/4 v3, 0x4

    if-ne v2, v3, :cond_166

    const/4 v2, 0x0

    if-eqz v0, :cond_cc

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_bf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    :cond_cc
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_d3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v2, :cond_126

    :goto_d9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_126

    const/4 v5, 0x0

    :goto_e0
    array-length v6, v2

    if-ge v5, v6, :cond_125

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f6

    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    :cond_f6
    new-instance v8, Landroid/content/OperationApplicationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for column "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_125
    .catchall {:try_start_d3 .. :try_end_125} :catchall_161

    :cond_125
    goto :goto_d9

    :cond_126
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    nop

    move v2, v4

    :goto_12b
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v3, :cond_15b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_136

    goto :goto_15b

    :cond_136
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows but actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15b
    :goto_15b
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(I)V

    return-object v3

    :catchall_161
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_166
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static newCall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 10

    new-instance v6, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v6
.end method

.method public static newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x5
    const-string v0, "call"

    return-object v0

    :pswitch_b  #0x4
    const-string v0, "assert"

    return-object v0

    :pswitch_e  #0x3
    const-string v0, "delete"

    return-object v0

    :pswitch_11  #0x2
    const-string/jumbo v0, "update"

    return-object v0

    :pswitch_15  #0x1
    const-string v0, "insert"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_11  #00000002
        :pswitch_e  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v0, :cond_10

    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Landroid/content/ContentProviderResult;

    invoke-direct {v1, v0}, Landroid/content/ContentProviderResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAssertQuery()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isCall()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isDelete()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isExceptionAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return v0
.end method

.method public isInsert()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isReadOperation()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isUpdate()Z
    .registers 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isWriteOperation()Z
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public isYieldAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_34

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_24

    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v2

    :goto_25
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v0, :cond_4b

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_20
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v4, :cond_3a

    move-object v4, v3

    check-cast v4, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3b

    :cond_3a
    move-object v4, v3

    :goto_3b
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_4a
    return-object v1

    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .registers 8

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_34

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_24

    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v2

    :goto_25
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderOperation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_31

    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_31
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v1, :cond_45

    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_59

    const-string/jumbo v1, "selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_59
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v1, :cond_6d

    const-string/jumbo v1, "selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6d
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_80

    const-string v1, "expectedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_80
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v1, :cond_8a

    const-string/jumbo v1, "yieldAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8a
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v1, :cond_93

    const-string v1, "exceptionAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_2c

    :cond_29
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    const/4 v3, -0x1

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_41

    :cond_3e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_55

    :cond_52
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_55
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v0, :cond_62

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_65

    :cond_62
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_65
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    :cond_7b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7e
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
