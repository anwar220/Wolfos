# classes.dex

.class public final Landroid/app/search/SearchTarget;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchTarget$Builder;,
        Landroid/app/search/SearchTarget$SearchLayoutType;,
        Landroid/app/search/SearchTarget$SearchResultType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_TYPE_ICON:Ljava/lang/String; = "icon"

.field public static final LAYOUT_TYPE_ICON_ROW:Ljava/lang/String; = "icon_row"

.field public static final LAYOUT_TYPE_SHORT_ICON_ROW:Ljava/lang/String; = "short_icon_row"

.field public static final RESULT_TYPE_APPLICATION:I = 0x1

.field public static final RESULT_TYPE_SHORTCUT:I = 0x2

.field public static final RESULT_TYPE_SLICE:I = 0x4

.field public static final RESULT_TYPE_WIDGETS:I = 0x8


# instance fields
.field private final mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private final mExtras:Landroid/os/Bundle;

.field private final mHidden:Z

.field private final mId:Ljava/lang/String;

.field private final mLayoutType:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;

.field private final mResultType:I

.field private final mScore:F

.field private final mSearchAction:Landroid/app/search/SearchAction;

.field private final mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final mSliceUri:Landroid/net/Uri;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/search/SearchTarget$1;

    invoke-direct {v0}, Landroid/app/search/SearchTarget$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .registers 27

    move-object v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v5, p1

    iput v5, v0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    move-object/from16 v6, p4

    iput-object v6, v0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    move/from16 v7, p5

    iput v7, v0, Landroid/app/search/SearchTarget;->mScore:F

    move/from16 v8, p6

    iput-boolean v8, v0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    iput-object v9, v0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    iput-object v1, v0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    iput-object v2, v0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v4, v0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, v0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    move-object/from16 v9, p13

    iput-object v9, v0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    if-eqz v1, :cond_4c

    add-int/lit8 v10, v10, 0x1

    :cond_4c
    if-eqz v2, :cond_50

    add-int/lit8 v10, v10, 0x1

    :cond_50
    if-eqz v4, :cond_54

    add-int/lit8 v10, v10, 0x1

    :cond_54
    if-eqz v3, :cond_58

    add-int/lit8 v10, v10, 0x1

    :cond_58
    const/4 v11, 0x1

    if-gt v10, v11, :cond_5c

    return-void

    :cond_5c
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Only one of SearchAction, ShortcutInfo, AppWidgetProviderInfo, SliceUri can be assigned in a SearchTarget."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    sget-object v0, Landroid/app/search/SearchAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchAction;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/search/SearchTarget-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/SearchTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()I
    .registers 2

    iget v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    return v0
.end method

.method public getScore()F
    .registers 2

    iget v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    return v0
.end method

.method public getSearchAction()Landroid/app/search/SearchAction;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isHidden()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    return v0
.end method

.method public shouldHide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
