# classes.dex

.class public final Landroid/app/smartspace/SmartspaceTarget;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceTarget$Builder;,
        Landroid/app/smartspace/SmartspaceTarget$UiTemplateType;,
        Landroid/app/smartspace/SmartspaceTarget$FeatureType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_ALARM:I = 0x7

.field public static final FEATURE_BEDTIME_ROUTINE:I = 0x10

.field public static final FEATURE_BLAZE_BUILD_PROGRESS:I = 0x28

.field public static final FEATURE_CALENDAR:I = 0x2

.field public static final FEATURE_COMMUTE_TIME:I = 0x3

.field public static final FEATURE_CONSENT:I = 0xb

.field public static final FEATURE_CROSS_DEVICE_TIMER:I = 0x20

.field public static final FEATURE_DOORBELL:I = 0x1e

.field public static final FEATURE_DRIVING_MODE:I = 0x1a

.field public static final FEATURE_EARTHQUAKE_ALERT:I = 0x26

.field public static final FEATURE_EARTHQUAKE_OCCURRED:I = 0x29

.field public static final FEATURE_ETA_MONITORING:I = 0x12

.field public static final FEATURE_FITNESS_TRACKING:I = 0x11

.field public static final FEATURE_FLASHLIGHT:I = 0x1c

.field public static final FEATURE_FLIGHT:I = 0x4

.field public static final FEATURE_GAS_STATION_PAYMENT:I = 0x18

.field public static final FEATURE_HOLIDAY_ALARM:I = 0x22

.field public static final FEATURE_LOYALTY_CARD:I = 0xe

.field public static final FEATURE_MEDIA:I = 0xf

.field public static final FEATURE_MEDIA_HEADS_UP:I = 0x24

.field public static final FEATURE_MEDIA_RESUME:I = 0x1f

.field public static final FEATURE_MISSED_CALL:I = 0x13

.field public static final FEATURE_ONBOARDING:I = 0x8

.field public static final FEATURE_PACKAGE_TRACKING:I = 0x14

.field public static final FEATURE_PAIRED_DEVICE_STATE:I = 0x19

.field public static final FEATURE_REMINDER:I = 0x6

.field public static final FEATURE_SAFETY_CHECK:I = 0x23

.field public static final FEATURE_SEVERE_WEATHER_ALERT:I = 0x21

.field public static final FEATURE_SHOPPING_LIST:I = 0xd

.field public static final FEATURE_SLEEP_SUMMARY:I = 0x1b

.field public static final FEATURE_SPORTS:I = 0x9

.field public static final FEATURE_STEP_COUNTING:I = 0x25

.field public static final FEATURE_STEP_DATE:I = 0x27

.field public static final FEATURE_STOCK_PRICE_CHANGE:I = 0xc

.field public static final FEATURE_STOPWATCH:I = 0x16

.field public static final FEATURE_TIMER:I = 0x15

.field public static final FEATURE_TIME_TO_LEAVE:I = 0x1d

.field public static final FEATURE_TIPS:I = 0x5

.field public static final FEATURE_UNDEFINED:I = 0x0

.field public static final FEATURE_UPCOMING_ALARM:I = 0x17

.field public static final FEATURE_WEATHER:I = 0x1

.field public static final FEATURE_WEATHER_ALERT:I = 0xa

.field public static final UI_TEMPLATE_CAROUSEL:I = 0x4

.field public static final UI_TEMPLATE_COMBINED_CARDS:I = 0x6

.field public static final UI_TEMPLATE_DEFAULT:I = 0x1

.field public static final UI_TEMPLATE_HEAD_TO_HEAD:I = 0x5

.field public static final UI_TEMPLATE_SUB_CARD:I = 0x7

.field public static final UI_TEMPLATE_SUB_IMAGE:I = 0x2

.field public static final UI_TEMPLATE_SUB_LIST:I = 0x3

.field public static final UI_TEMPLATE_UNDEFINED:I


# instance fields
.field private final mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssociatedSmartspaceTargetId:Ljava/lang/String;

.field private final mBaseAction:Landroid/app/smartspace/SmartspaceAction;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mCreationTimeMillis:J

.field private final mExpiryTimeMillis:J

.field private final mFeatureType:I

.field private final mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

.field private final mIconGrid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mScore:F

.field private final mSensitive:Z

.field private final mShouldShowExpanded:Z

.field private final mSliceUri:Landroid/net/Uri;

.field private final mSmartspaceTargetId:Ljava/lang/String;

.field private final mSourceNotificationKey:Ljava/lang/String;

.field private final mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final mWidget:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceTarget$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    const-class v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "JJF",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    move/from16 v8, p8

    iput v8, v0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    move/from16 v11, p11

    iput v11, v0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .registers 22

    invoke-direct/range {p0 .. p20}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_bd

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_bd

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    iget-wide v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    iget-wide v5, v2, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_bb

    iget-wide v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    iget-wide v5, v2, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_bb

    iget v3, v2, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    iget v4, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_bb

    iget v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    iget v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    if-ne v3, v4, :cond_bb

    iget-boolean v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    iget-boolean v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    if-ne v3, v4, :cond_bb

    iget-boolean v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    iget-boolean v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    if-ne v3, v4, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    goto :goto_bc

    :cond_bb
    move v0, v1

    :goto_bc
    return v0

    :cond_bd
    :goto_bd
    return v1
.end method

.method public getActionChips()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    return-object v0
.end method

.method public getAssociatedSmartspaceTargetId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAction()Landroid/app/smartspace/SmartspaceAction;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCreationTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public getExpiryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public getFeatureType()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    return v0
.end method

.method public getHeaderAction()Landroid/app/smartspace/SmartspaceAction;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    return-object v0
.end method

.method public getIconGrid()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    return-object v0
.end method

.method public getScore()F
    .registers 2

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    return v0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSmartspaceTargetId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceNotificationKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getWidget()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSensitive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    return v0
.end method

.method public shouldShowExpanded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceTarget{mSmartspaceTargetId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mHeaderAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mBaseAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCreationTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mExpiryTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mScore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mActionChips="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIconGrid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFeatureType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShouldShowExpanded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSourceNotificationKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mComponentName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUserHandle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAssociatedSmartspaceTargetId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSliceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTemplateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
