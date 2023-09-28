# classes3.dex

.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private mClassName:Ljava/lang/String;

.field private mEnable:Z

.field private mHistoryKeyCode:J

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I

.field private mPackageName:Ljava/lang/String;

.field private mShortcutKeyCode:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    iput-boolean p3, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    if-ltz p3, :cond_13

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseCharacter()C
    .registers 2

    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryKeyCode()J
    .registers 3

    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKeycode()I
    .registers 2

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getModifiers()I
    .registers 2

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutKeyCode()J
    .registers 3

    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    return v0
.end method

.method public setActive(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setHistoryKeyCode(J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    return-void
.end method

.method public setShortcutKeyCode(J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
