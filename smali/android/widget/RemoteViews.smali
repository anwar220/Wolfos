# classes4.dex

.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$HierarchyRootData;,
        Landroid/widget/RemoteViews$RemoteCollectionItems;,
        Landroid/widget/RemoteViews$RemoteResponse;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$ColorResources;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$RemoteViewOutlineProvider;,
        Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;,
        Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;,
        Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;,
        Landroid/widget/RemoteViews$SetIntTagAction;,
        Landroid/widget/RemoteViews$OverrideTextColorsAction;,
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$RemoveFromParentAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$NightModeReflectionAction;,
        Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;,
        Landroid/widget/RemoteViews$AttributeReflectionAction;,
        Landroid/widget/RemoteViews$ResourceReflectionAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BaseReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetRippleDrawableColor;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;,
        Landroid/widget/RemoteViews$SetOnClickResponse;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;,
        Landroid/widget/RemoteViews$ApplicationInfoCache;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$InteractionHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$MethodKey;,
        Landroid/widget/RemoteViews$ApplyFlags;,
        Landroid/widget/RemoteViews$ValueType;,
        Landroid/widget/RemoteViews$MarginType;
    }
.end annotation


# static fields
.field private static final ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

.field private static final ATTRIBUTE_REFLECTION_ACTION_TAG:I = 0x20

.field private static final BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field private static final COMPLEX_UNIT_DIMENSION_REFLECTION_ACTION_TAG:I = 0x19

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

.field public static final EXTRA_CHECKED:Ljava/lang/String; = "android.widget.extra.CHECKED"

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field static final EXTRA_REMOTEADAPTER_ON_LIGHT_BACKGROUND:Ljava/lang/String; = "remoteAdapterOnLightBackground"

.field public static final EXTRA_SHARED_ELEMENT_BOUNDS:Ljava/lang/String; = "android.widget.extra.SHARED_ELEMENT_BOUNDS"

.field static final FLAG_MASK_TO_PROPAGATE:I = 0x6

.field public static final FLAG_REAPPLY_DISALLOWED:I = 0x1

.field public static final FLAG_USE_LIGHT_BACKGROUND_LAYOUT:I = 0x4

.field public static final FLAG_WIDGET_IS_COLLECTION_CHILD:I = 0x2

.field private static final INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field public static final MARGIN_BOTTOM:I = 0x3

.field public static final MARGIN_END:I = 0x5

.field public static final MARGIN_LEFT:I = 0x0

.field public static final MARGIN_RIGHT:I = 0x2

.field public static final MARGIN_START:I = 0x4

.field public static final MARGIN_TOP:I = 0x1

.field private static final MAX_INIT_VIEW_COUNT:I = 0x10

.field private static final MAX_NESTED_VIEWS:I = 0xa

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_HAS_SIZED_REMOTEVIEWS:I = 0x2

.field private static final MODE_NORMAL:I = 0x0

.field private static final NIGHT_MODE_REFLECTION_ACTION_TAG:I = 0x1e

.field private static final OVERRIDE_TEXT_COLORS_TAG:I = 0x14

.field private static final REFLECTION_ACTION_TAG:I = 0x2

.field private static final REMOVE_FROM_PARENT_ACTION_TAG:I = 0x17

.field private static final RESOURCE_REFLECTION_ACTION_TAG:I = 0x18

.field private static final SET_COMPOUND_BUTTON_CHECKED_TAG:I = 0x1a

.field private static final SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final SET_INT_TAG_TAG:I = 0x16

.field private static final SET_ON_CHECKED_CHANGE_RESPONSE_TAG:I = 0x1d

.field private static final SET_ON_CLICK_RESPONSE_TAG:I = 0x1

.field private static final SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final SET_RADIO_GROUP_CHECKED:I = 0x1b

.field private static final SET_REMOTE_COLLECTION_ITEMS_ADAPTER_TAG:I = 0x1f

.field private static final SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final SET_REMOTE_VIEW_ADAPTER_LIST_TAG:I = 0xf

.field private static final SET_RIPPLE_DRAWABLE_COLOR_TAG:I = 0x15

.field private static final SET_VIEW_OUTLINE_RADIUS_TAG:I = 0x1c

.field private static final TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field static final VALUE_TYPE_ATTRIBUTE:I = 0x4

.field static final VALUE_TYPE_COMPLEX_UNIT:I = 0x2

.field static final VALUE_TYPE_RAW:I = 0x1

.field static final VALUE_TYPE_RESOURCE:I = 0x3

.field private static final VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mApplication:Landroid/content/pm/ApplicationInfo;

.field private mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field private mApplyFlags:I

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIdealSize:Landroid/util/SizeF;

.field private mIsRoot:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private mLayoutId:I

.field private mLightBackgroundLayoutId:I

.field private mPortrait:Landroid/widget/RemoteViews;

.field private mProviderInstanceId:J

.field private mSizedRemoteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mViewId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I
    .registers 1

    iget p0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->applyNestedViews(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/widget/RemoteViews;->getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetParameterType(I)Ljava/lang/Class;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getParameterType(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetStableId(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getStableId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smhasStableId(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->hasStableId(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetStableId(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->setStableId(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    const/16 v0, 0xa

    if-le p4, v0, :cond_42

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_3a

    goto :goto_42

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_42
    add-int/2addr p4, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez p2, :cond_57

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_5a

    :cond_57
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    :goto_5a
    if-nez v0, :cond_8e

    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_76

    :cond_6d
    sget-object v1, Landroid/util/SizeF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/SizeF;

    :goto_76
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto :goto_100

    :cond_8e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_ce

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_9f
    if-ge v3, v1, :cond_b2

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v5

    invoke-direct {v4, p1, v5, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iget-object p3, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :cond_b2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v3

    iget-object v4, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v4, v3, Landroid/widget/RemoteViews;->mViewId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v4, v3, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    goto :goto_100

    :cond_ce
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many views in mapping from size to RemoteViews."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d6
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p1, v2, v3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v2, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v2, v1, Landroid/widget/RemoteViews;->mViewId:I

    iput v2, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v1, v1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    :goto_100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_113

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    :cond_113
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-direct {p0, p1, v1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    if-eqz p1, :cond_5e

    if-eqz p2, :cond_5e

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v0, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v0, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_4e

    goto :goto_50

    :cond_4e
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_50
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/SizeF;",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_83

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, v0}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void

    :cond_4f
    nop

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v1, v0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many RemoteViews in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of RemoteViews cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate layouts for orientation or size cannot be modified. Instead, fully configure each layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applyNestedViews(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 14

    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v6, v0, p3, p4, p6}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    return-object v0
.end method

.method private configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void
.end method

.method private configureDescendantsAsChildren()V
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-direct {v2, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_1a

    :cond_2a
    goto :goto_54

    :cond_2b
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_54

    :cond_3c
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews$Action;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_44

    :cond_54
    :goto_54
    return-void
.end method

.method private static createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0}, Landroid/widget/RemoteViews;-><init>()V

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private finalizeViewRecycling(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-static {p1}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    if-ltz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_14
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_34

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_37
    return-void
.end method

.method private findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 9

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-direct {v3}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v5

    if-eqz v5, :cond_34

    if-nez v0, :cond_2a

    move-object v0, v3

    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v1

    goto :goto_34

    :cond_2a
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_34

    move-object v0, v3

    move v1, v5

    :cond_34
    :goto_34
    goto :goto_a

    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Expected RemoteViews to have ideal size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3d
    if-nez v0, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find a RemoteViews fitting the current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    :cond_5c
    return-object v0
.end method

.method private findSmallestRemoteView()Landroid/widget/RemoteViews;
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private static fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .registers 8

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2c

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method private getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_d6

    :pswitch_7  #0x9, 0x10, 0x11
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_26  #0x20
    new-instance v1, Landroid/widget/RemoteViews$AttributeReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_2c  #0x1f
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_32  #0x1e
    new-instance v1, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_38  #0x1d
    new-instance v1, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_3e  #0x1c
    new-instance v1, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_44  #0x1b
    new-instance v1, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_4a  #0x1a
    new-instance v1, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_50  #0x19
    new-instance v1, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_56  #0x18
    new-instance v1, Landroid/widget/RemoteViews$ResourceReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_5c  #0x17
    new-instance v1, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_62  #0x16
    new-instance v1, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_68  #0x15
    new-instance v1, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_6e  #0x14
    new-instance v1, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_74  #0x13
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_7a  #0x12
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_80  #0xf
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_86  #0xe
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_8c  #0xd
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_92  #0xc
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_98  #0xb
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_9e  #0xa
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_a4  #0x8
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_aa  #0x7
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_b0  #0x6
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_b6  #0x5
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_bc  #0x4
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V

    return-object v1

    :pswitch_c4  #0x3
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_ca  #0x2
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_d0  #0x1
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d0  #00000001
        :pswitch_ca  #00000002
        :pswitch_c4  #00000003
        :pswitch_bc  #00000004
        :pswitch_b6  #00000005
        :pswitch_b0  #00000006
        :pswitch_aa  #00000007
        :pswitch_a4  #00000008
        :pswitch_7  #00000009
        :pswitch_9e  #0000000a
        :pswitch_98  #0000000b
        :pswitch_92  #0000000c
        :pswitch_8c  #0000000d
        :pswitch_86  #0000000e
        :pswitch_80  #0000000f
        :pswitch_7  #00000010
        :pswitch_7  #00000011
        :pswitch_7a  #00000012
        :pswitch_74  #00000013
        :pswitch_6e  #00000014
        :pswitch_68  #00000015
        :pswitch_62  #00000016
        :pswitch_5c  #00000017
        :pswitch_56  #00000018
        :pswitch_50  #00000019
        :pswitch_4a  #0000001a
        :pswitch_44  #0000001b
        :pswitch_3e  #0000001c
        :pswitch_38  #0000001d
        :pswitch_32  #0000001e
        :pswitch_2c  #0000001f
        :pswitch_26  #00000020
    .end packed-switch
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 8

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_30} :catch_33

    move-object v1, v3

    nop

    :cond_32
    return-object v1

    :catch_33
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChildId(Landroid/widget/RemoteViews;)I
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1e

    add-int/lit8 v0, v1, 0x1

    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_2d

    const/4 v0, 0x1

    return v0

    :cond_2d
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_33

    const/4 v0, 0x2

    return v0

    :cond_33
    return v0
.end method

.method private getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p1

    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-object p1
.end method

.method private getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    return-object v0
.end method

.method private getIdealSize()Landroid/util/SizeF;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-object v0
.end method

.method private getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 23

    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    invoke-virtual {p0, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    return-object v11
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_7
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_bb

    if-nez p3, :cond_1f

    :try_start_18
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_27

    :cond_1f
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p3, v5, v4

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_27
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5a

    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/view/RemotableViewMethod;

    invoke-interface {v6}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_4d} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_4d} :catch_8a
    .catchall {:try_start_18 .. :try_end_4d} :catchall_13d

    nop

    :try_start_4e
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    invoke-virtual {v6, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_13d

    goto :goto_bb

    :cond_5a
    :try_start_5a
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " can\'t use method with RemoteViews: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5a .. :try_end_8a} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_8a} :catch_8a
    .catchall {:try_start_5a .. :try_end_8a} :catchall_13d

    :catch_8a
    move-exception v3

    :try_start_8b
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bb
    :goto_bb
    if-nez p4, :cond_c1

    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :cond_c1
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_cc

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    :cond_cc
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_139

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_e0
    .catchall {:try_start_8b .. :try_end_e0} :catchall_13d

    :try_start_e0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_ec
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e0 .. :try_end_ec} :catch_ed
    .catch Ljava/lang/IllegalAccessException; {:try_start_e0 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_13d

    goto :goto_139

    :catch_ed
    move-exception v4

    :try_start_ee
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async implementation declared as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not defined for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": public Runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_139
    :goto_139
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :catchall_13d
    move-exception v2

    monitor-exit v1
    :try_end_13f
    .catchall {:try_start_ee .. :try_end_13f} :catchall_13d

    throw v2
.end method

.method private static getNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 3

    const v0, 0x102046b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v1, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1
.end method

.method private static getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_14

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getParameterType(I)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_38

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x11
    const-class v0, Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_8  #0x10
    const-class v0, Landroid/graphics/drawable/Icon;

    return-object v0

    :pswitch_b  #0xf
    const-class v0, Landroid/content/res/ColorStateList;

    return-object v0

    :pswitch_e  #0xe
    const-class v0, Landroid/content/Intent;

    return-object v0

    :pswitch_11  #0xd
    const-class v0, Landroid/os/Bundle;

    return-object v0

    :pswitch_14  #0xc
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_17  #0xb
    const-class v0, Landroid/net/Uri;

    return-object v0

    :pswitch_1a  #0xa
    const-class v0, Ljava/lang/CharSequence;

    return-object v0

    :pswitch_1d  #0x9
    const-class v0, Ljava/lang/String;

    return-object v0

    :pswitch_20  #0x8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_23  #0x7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_26  #0x6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_29  #0x5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_2c  #0x4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_2f  #0x3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_32  #0x2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_35  #0x1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35  #00000001
        :pswitch_32  #00000002
        :pswitch_2f  #00000003
        :pswitch_2c  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_23  #00000007
        :pswitch_20  #00000008
        :pswitch_1d  #00000009
        :pswitch_1a  #0000000a
        :pswitch_17  #0000000b
        :pswitch_14  #0000000c
        :pswitch_11  #0000000d
        :pswitch_e  #0000000e
        :pswitch_b  #0000000f
        :pswitch_8  #00000010
        :pswitch_5  #00000011
    .end packed-switch
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string v0, "()"

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    :cond_16
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    :cond_19
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_24
    return-object p0
.end method

.method private getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 7

    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    const v1, 0x102046c

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    :cond_18
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    return-object v0

    :cond_1f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000  # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method

.method private static getStableId(Landroid/view/View;)I
    .registers 3

    const v0, 0x102046d

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v1, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1
.end method

.method private static getViewLayoutId(Landroid/view/View;)I
    .registers 2

    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private hasMultipleLayouts()Z
    .registers 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private hasSizedRemoteViews()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static hasStableId(Landroid/view/View;)Z
    .registers 3

    const v0, 0x102046d

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 12

    nop

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz p5, :cond_a

    invoke-virtual {p5, v0}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    :cond_a
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    invoke-direct {v1, p1, v0}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    if-eqz p4, :cond_17

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    :cond_17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->shouldUseStaticFilter()Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    goto :goto_29

    :cond_28
    move-object v3, p0

    :goto_29
    invoke-virtual {v2, v3}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_49

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    const v4, 0x102046c

    iget v5, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    :cond_49
    const v4, 0x1020018

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-object v3
.end method

.method private initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 8

    if-nez p2, :cond_b

    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    goto :goto_13

    :cond_b
    iget-object v0, p2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    :goto_13
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_1b

    goto :goto_1e

    :cond_1b
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    goto :goto_22

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    move-object p2, p0

    :goto_22
    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iget v1, p1, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iget-wide v1, p1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    :cond_54
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_83

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {v2, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_83
    iget-object v1, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_9c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    invoke-direct {p1, v1, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_9c
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_a3

    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    :cond_a3
    return-void
.end method

.method private initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/widget/RemoteViews;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-direct {v4}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v5

    if-eqz v5, :cond_52

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    if-eqz v3, :cond_38

    iget-object v7, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_38

    :cond_30
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "All RemoteViews must share the same package and user"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_38
    :goto_38
    if-eqz v3, :cond_43

    cmpg-float v7, v6, v2

    if-gez v7, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_43
    :goto_43
    if-eqz v3, :cond_48

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    move v2, v6

    move-object v3, v4

    :goto_4a
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    if-nez v1, :cond_51

    iget-object v1, v4, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :cond_51
    goto :goto_a

    :cond_52
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expected RemoteViews to have ideal size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    return-object v1
.end method

.method static synthetic lambda$new$2(Ljava/util/Map$Entry;)Landroid/widget/RemoteViews;
    .registers 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Class;)Z
    .registers 2

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    if-nez p3, :cond_9

    sget-object v1, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    goto :goto_a

    :cond_9
    move-object v1, p3

    :goto_a
    move-object p3, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method private readActionsFromParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-void
.end method

.method private reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Z)V
    .registers 9

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    if-eqz p6, :cond_19

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    :cond_19
    return-void
.end method

.method private reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8

    invoke-direct {p0, p1, p2, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {v0, p2, p3, p4, p6}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method private reconstructCaches()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v0, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void
.end method

.method private setIdealSize(Landroid/util/SizeF;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-void
.end method

.method private static setNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 5

    const v0, 0x102046b

    if-ltz p1, :cond_10

    if-lt p1, p2, :cond_8

    goto :goto_10

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_18

    :cond_10
    :goto_10
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    :goto_18
    return-void
.end method

.method private static setStableId(Landroid/view/View;I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x102046d

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method private static squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .registers 6

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "RemoteViews"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_21

    nop

    const/4 v0, 0x1

    return v0

    :catch_21
    move-exception v2

    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_28
    move-exception v2

    const-string v3, "Cannot send pending intent: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private writeActionsToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_25
    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 5

    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_36

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    goto :goto_15

    :cond_25
    goto :goto_36

    :cond_26
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public addStableView(ILandroid/widget/RemoteViews;I)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;)V
    .registers 4

    if-nez p2, :cond_8

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    :goto_d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;I)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    return-object v1
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 13

    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v6, v0, p2, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 23

    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    invoke-virtual {p0, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v1

    return-object v1
.end method

.method public applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;ILandroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;ILandroid/util/SizeF;)Landroid/view/View;
    .registers 13

    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, p2, p3, v1}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    return-object v0
.end method

.method public canRecycleView(Landroid/view/View;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_10

    return v0

    :cond_10
    const v2, 0x102046c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1d

    const/4 v3, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_30

    iget v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-ne v4, v3, :cond_30

    const/4 v0, 0x1

    :cond_30
    return v0
.end method

.method public clone()Landroid/widget/RemoteViews;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public computeUniqueId(Landroid/widget/RemoteViews;)J
    .registers 9

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_11

    shl-long/2addr v4, v1

    :cond_11
    return-wide v4

    :cond_12
    if-nez p1, :cond_15

    return-wide v2

    :cond_15
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1e

    return-wide v2

    :cond_1e
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;->getChildId(Landroid/widget/RemoteViews;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_26

    return-wide v2

    :cond_26
    shl-long v1, v4, v1

    int-to-long v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()I

    move-result v0

    return v0
.end method

.method public getDarkTextViews()Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    :cond_8
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return-object v0

    :catchall_17
    move-exception v0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    throw v0
.end method

.method public getLayoutId()I
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    :goto_e
    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getProviderInstanceId()J
    .registers 3

    iget-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-wide v0
.end method

.method public getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    :cond_9
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 6

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-nez p1, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_13
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eq v0, v2, :cond_1a

    return-object v2

    :cond_1a
    return-object v1
.end method

.method public getSequenceNumber()I
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getViewId()I
    .registers 2

    iget v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    return v0
.end method

.method public hasFlags(I)Z
    .registers 3

    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_18
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_33

    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v4}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_33
    iget-object v3, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v3, :cond_38

    return-void

    :cond_38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3d
    if-ge v4, v2, :cond_7a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v6}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    if-nez v7, :cond_6d

    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    if-eqz v7, :cond_72

    const/4 v8, 0x1

    if-ne v7, v8, :cond_77

    :cond_72
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_7a
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    return-void
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public overrideTextColors(I)V
    .registers 3

    new-instance v0, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public prefersAsyncApply()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Z)V

    return-void
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v15

    new-instance v10, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object v11, v10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v1

    return-object v1
.end method

.method public reduceImageSizes(II)V
    .registers 7

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public removeAllViews(I)V
    .registers 3

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public removeAllViewsExceptId(II)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public removeFromParent(I)V
    .registers 3

    new-instance v0, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .registers 4

    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .registers 4

    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBlendMode(ILjava/lang/String;Landroid/graphics/BlendMode;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x11

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v4, 0x8

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v4, 0xa

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequenceAttr(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v4, 0xa

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .registers 7

    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setChronometerCountDown(IZ)V
    .registers 4

    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setColor(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorAttr(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorInt(ILjava/lang/String;II)V
    .registers 13

    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorStateList(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 13

    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v4, 0xf

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setColorStateListAttr(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCompoundButtonChecked(IZ)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .registers 4

    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDisplayedChild(II)V
    .registers 4

    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .registers 12

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v4, 0x7

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .registers 12

    new-instance v6, Landroid/widget/RemoteViews$SetDrawableTint;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setEmptyView(II)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v4, 0x6

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloatDimen(ILjava/lang/String;FI)V
    .registers 13

    new-instance v7, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v4, 0x6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloatDimen(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloatDimenAttr(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 13

    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v4, 0x10

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4

    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .registers 4

    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public setImageViewResource(II)V
    .registers 4

    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .registers 4

    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntDimen(ILjava/lang/String;FI)V
    .registers 13

    new-instance v7, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v4, 0x4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntDimen(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntDimenAttr(ILjava/lang/String;I)V
    .registers 12

    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntTag(III)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/widget/RemoteViews;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setLabelFor(II)V
    .registers 4

    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setLightBackgroundLayoutId(I)V
    .registers 2

    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .registers 12

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x5

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnCheckedChangeResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .registers 4

    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4

    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    return-void
.end method

.method public setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .registers 10

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBar(IIIZ)V
    .registers 6

    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-nez p4, :cond_14

    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_14
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .registers 10

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .registers 10

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProviderInstanceId(J)V
    .registers 3

    iput-wide p1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-void
.end method

.method public setRadioGroupChecked(II)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .registers 4

    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;ILandroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setScrollPosition(II)V
    .registers 4

    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextColor(II)V
    .registers 4

    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setTextColor(ILandroid/content/res/ColorStateList;)V
    .registers 10

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setTextColor"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .registers 15

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 15

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .registers 15

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 15

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4

    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 11

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v5, 0xb

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutHeight(IFI)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutHeightAttr(II)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutHeightDimen(II)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMargin(IIFI)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMarginAttr(III)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMarginDimen(III)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutWidth(IFI)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutWidthAttr(II)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutWidthDimen(II)V
    .registers 6

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewOutlinePreferredRadius(IFI)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewOutlinePreferredRadiusAttr(II)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewOutlinePreferredRadiusDimen(II)V
    .registers 5

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewPadding(IIIII)V
    .registers 14

    new-instance v7, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewVisibility(II)V
    .registers 4

    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method protected shouldUseStaticFilter()Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showNext(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public showPrevious(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public updateAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->get(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void
.end method

.method public visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    :goto_20
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_36
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_3d
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_44

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_45

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_18
    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-nez v3, :cond_26

    goto :goto_2f

    :cond_26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v1, p1, p2}, Landroid/util/SizeF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    :cond_2f
    :goto_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_32
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    goto :goto_8e

    :cond_45
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_78

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_58
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_67

    :cond_77
    goto :goto_8e

    :cond_78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_84

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_84
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8e
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    return-void
.end method
