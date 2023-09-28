# classes2.dex

.class public abstract Landroid/view/textclassifier/TextClassifierEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$Builder;,
        Landroid/view/textclassifier/TextClassifierEvent$Type;,
        Landroid/view/textclassifier/TextClassifierEvent$Category;
    }
.end annotation


# static fields
.field public static final CATEGORY_CONVERSATION_ACTIONS:I = 0x3

.field public static final CATEGORY_LANGUAGE_DETECTION:I = 0x4

.field public static final CATEGORY_LINKIFY:I = 0x2

.field public static final CATEGORY_SELECTION:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_TOKEN_CONVERSATION_ACTION_EVENT:I = 0x3

.field private static final PARCEL_TOKEN_LANGUAGE_DETECTION_EVENT:I = 0x4

.field private static final PARCEL_TOKEN_TEXT_LINKIFY_EVENT:I = 0x2

.field private static final PARCEL_TOKEN_TEXT_SELECTION_EVENT:I = 0x1

.field public static final TYPE_ACTIONS_GENERATED:I = 0x14

.field public static final TYPE_ACTIONS_SHOWN:I = 0x6

.field public static final TYPE_AUTO_SELECTION:I = 0x5

.field public static final TYPE_COPY_ACTION:I = 0x9

.field public static final TYPE_CUT_ACTION:I = 0xb

.field public static final TYPE_LINKS_GENERATED:I = 0x15

.field public static final TYPE_LINK_CLICKED:I = 0x7

.field public static final TYPE_MANUAL_REPLY:I = 0x13

.field public static final TYPE_OTHER_ACTION:I = 0x10

.field public static final TYPE_OVERTYPE:I = 0x8

.field public static final TYPE_PASTE_ACTION:I = 0xa

.field public static final TYPE_READ_CLIPBOARD:I = 0x16

.field public static final TYPE_SELECTION_DESTROYED:I = 0xf

.field public static final TYPE_SELECTION_DRAG:I = 0xe

.field public static final TYPE_SELECTION_MODIFIED:I = 0x2

.field public static final TYPE_SELECTION_RESET:I = 0x12

.field public static final TYPE_SELECTION_STARTED:I = 0x1

.field public static final TYPE_SELECT_ALL:I = 0x11

.field public static final TYPE_SHARE_ACTION:I = 0xc

.field public static final TYPE_SMART_ACTION:I = 0xd

.field public static final TYPE_SMART_SELECTION_MULTI:I = 0x4

.field public static final TYPE_SMART_SELECTION_SINGLE:I = 0x3


# instance fields
.field private final mActionIndices:[I

.field private final mEntityTypes:[Ljava/lang/String;

.field private final mEventCategory:I

.field private mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final mEventIndex:I

.field private final mEventType:I

.field private final mExtras:Landroid/os/Bundle;

.field public mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final mLocale:Landroid/icu/util/ULocale;

.field private final mModelName:Ljava/lang/String;

.field private final mResultId:Ljava/lang/String;

.field private final mScores:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    const-class v0, Landroid/view/textclassifier/TextClassificationContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [F

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    :goto_4e
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_4c

    :cond_48
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    :goto_4c
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V

    return-void
.end method

.method private getParcelToken()I
    .registers 4

    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    return v0

    :cond_c
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    return v0

    :cond_12
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;

    if-eqz v0, :cond_18

    const/4 v0, 0x3

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionIndices()[I
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    return-object v0
.end method

.method public getEntityTypes()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventCategory()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    return v0
.end method

.method public getEventContext()Landroid/view/textclassifier/TextClassificationContext;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object v0
.end method

.method public getEventIndex()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public getScores()[F
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    return-object v0
.end method

.method setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-void
.end method

.method public final toSelectionEvent()Landroid/view/textclassifier/SelectionEvent;
    .registers 11

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    const/4 v0, 0x0

    return-object v0

    :pswitch_9  #0x2
    const/4 v0, 0x2

    goto :goto_d

    :pswitch_b  #0x1
    const/4 v0, 0x1

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v2, ""

    if-lez v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    move-object v7, v1

    goto :goto_20

    :cond_1f
    move-object v7, v2

    :goto_20
    new-instance v1, Landroid/view/textclassifier/SelectionEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    :cond_3c
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v1, v4}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_48

    goto :goto_49

    :cond_48
    move-object v2, v4

    :goto_49
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_b6

    :pswitch_5a  #0x6, 0x7
    const/4 v2, 0x0

    goto :goto_87

    :pswitch_5c  #0x12
    const/16 v2, 0xc9

    goto :goto_87

    :pswitch_5f  #0x11
    const/16 v2, 0xc8

    goto :goto_87

    :pswitch_62  #0x10
    const/16 v2, 0x6c

    goto :goto_87

    :pswitch_65  #0xf
    const/16 v2, 0x6b

    goto :goto_87

    :pswitch_68  #0xe
    const/16 v2, 0x6a

    goto :goto_87

    :pswitch_6b  #0xd
    const/16 v2, 0x69

    goto :goto_87

    :pswitch_6e  #0xc
    const/16 v2, 0x68

    goto :goto_87

    :pswitch_71  #0xb
    const/16 v2, 0x67

    goto :goto_87

    :pswitch_74  #0xa
    const/16 v2, 0x66

    goto :goto_87

    :pswitch_77  #0x9
    const/16 v2, 0x65

    goto :goto_87

    :pswitch_7a  #0x8
    const/16 v2, 0x64

    goto :goto_87

    :pswitch_7d  #0x5
    const/4 v2, 0x5

    goto :goto_87

    :pswitch_7f  #0x4
    const/4 v2, 0x4

    goto :goto_87

    :pswitch_81  #0x3
    const/4 v2, 0x3

    goto :goto_87

    :pswitch_83  #0x2
    const/4 v2, 0x2

    goto :goto_87

    :pswitch_85  #0x1
    const/4 v2, 0x1

    nop

    :goto_87
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    instance-of v5, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v5, :cond_ad

    move-object v5, p0

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordStartIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordEndIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordStartIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordEndIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    :cond_ad
    return-object v1

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_b  #00000001
        :pswitch_9  #00000002
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_85  #00000001
        :pswitch_83  #00000002
        :pswitch_81  #00000003
        :pswitch_7f  #00000004
        :pswitch_7d  #00000005
        :pswitch_5a  #00000006
        :pswitch_5a  #00000007
        :pswitch_7a  #00000008
        :pswitch_77  #00000009
        :pswitch_74  #0000000a
        :pswitch_71  #0000000b
        :pswitch_6e  #0000000c
        :pswitch_6b  #0000000d
        :pswitch_68  #0000000e
        :pswitch_65  #0000000f
        :pswitch_62  #00000010
        :pswitch_5f  #00000011
        :pswitch_5c  #00000012
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEntityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mModelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mActionIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassifierEvent;->toString(Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toString(Ljava/lang/StringBuilder;)V
    .registers 2

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getParcelToken()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_40

    const/4 v0, 0x0

    goto :goto_44

    :cond_40
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
