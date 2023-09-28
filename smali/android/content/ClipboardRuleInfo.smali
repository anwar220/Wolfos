# classes.dex

.class public Landroid/content/ClipboardRuleInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipboardRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CLICK_INFO:I = 0x2

.field public static final TYPE_RULE_INFO:I = 0x1

.field public static final TYPE_SENSITIVE_INFO:I = 0x3


# instance fields
.field private mPkgName:Ljava/lang/String;

.field private mRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/ClipboardRuleInfo$1;

    invoke-direct {v0}, Landroid/content/ClipboardRuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/ClipboardRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    iput p2, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRuleInfo(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
