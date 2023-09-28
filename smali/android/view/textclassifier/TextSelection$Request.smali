# classes2.dex

.class public final Landroid/view/textclassifier/TextSelection$Request;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Request$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextSelection$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDarkLaunchAllowed:Z

.field private final mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mIncludeTextClassification:Z

.field private final mStartIndex:I

.field private mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextSelection$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextSelection$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    iput-object p4, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    iput-boolean p5, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    iput-boolean p6, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    iput-object p7, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;Landroid/view/textclassifier/TextSelection$Request-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const-class v1, Landroid/os/LocaleList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/LocaleList;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    const-class v1, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    new-instance v16, Landroid/view/textclassifier/TextSelection$Request;

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    move v7, v15

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V

    invoke-virtual {v1, v14}, Landroid/view/textclassifier/TextSelection$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEndIndex()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStartIndex()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    return v0
.end method

.method public getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isDarkLaunchAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    return v0
.end method

.method public setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public shouldIncludeTextClassification()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
