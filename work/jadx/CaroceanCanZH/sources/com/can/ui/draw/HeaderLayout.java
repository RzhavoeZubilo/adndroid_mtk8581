package com.can.ui.draw;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.can.activity.R;
import com.can.platforms.AppConfigParser;

/* JADX INFO: loaded from: classes.dex */
public class HeaderLayout extends LinearLayout {
    private final int STYLE_BT_CHECK;
    private final int STYLE_LEFT_RIGHT_BUTTON;
    private final int STYLE_ONLY_CHECKBOX;
    private final int STYLE_ONLY_ONE_BUTTON;
    private final int STYLE_ONLY_TITLE;
    private final int STYLE_SEEKBAR;
    private final int STYLE_TWO_RADIOBUTTON;
    private Drawable item_Drawable;
    private String item_bt_check_btTitle;
    private String item_hintTitle;
    private int item_seekbarMax;
    private int item_seekbarPos;
    private String item_subTitle;
    private String item_two_button_left;
    private String item_two_button_right;
    private RadioGroup item_two_radioButton;
    private Button mBtCheck_bt;
    private CheckBox mBtCheck_ck;
    private Context mContext;
    private boolean mEnable;
    private View mHeader;
    private TextView mHintTitle;
    private ImageView mIcon;
    private LayoutInflater mInflater;
    private LinearLayout mLayoutRightContainer;
    private Button mLeftButton;
    private TextView mMiddleText;
    private onProgressChanged mOnProgressChange;
    private onOneButtonListener mOneButtonListener;
    private CheckBox mOneCheckBox;
    private onOneCheckBoxListener mOneCheckListener;
    private Button mOnlyOneButton;
    private TextView mPrompt_title;
    private TextView mPrompt_title2;
    private RadioButton mRadioButton1;
    private RadioButton mRadioButton2;
    private Button mRightButton;
    private TextView mRightTextTitle;
    private SeekBar mSeekBar;
    private TextView mSeekbarTitle;
    private TextView mSubTitle;
    private onTwoButtonListener mTwoButtonListener;
    private onTwoRadioButtonListener mTwoRadioListener;
    private View mView;
    private int style_id;

    public interface onOneButtonListener {
        void onOneButtonClick(View view, MotionEvent motionEvent);
    }

    public interface onOneCheckBoxListener {
        void onCheckout(View view, boolean z);
    }

    public interface onProgressChanged {
        void onProgressChanged(View view, SeekBar seekBar, int i);
    }

    public interface onTwoButtonListener {
        void onLeftButtonClick(View view, MotionEvent motionEvent);

        void onRightButtonClick(View view, MotionEvent motionEvent);
    }

    public interface onTwoRadioButtonListener {
        void onLeftRadioButtonClick(View view);

        void onRightRadioButtonClick(View view);
    }

    HeaderLayout getInstance() {
        return new HeaderLayout(this.mContext);
    }

    public HeaderLayout(Context context) {
        super(context);
        this.mEnable = true;
        this.style_id = 1;
        this.item_seekbarMax = 100;
        this.item_seekbarPos = 50;
        this.STYLE_ONLY_TITLE = 0;
        this.STYLE_LEFT_RIGHT_BUTTON = 1;
        this.STYLE_ONLY_CHECKBOX = 2;
        this.STYLE_ONLY_ONE_BUTTON = 3;
        this.STYLE_TWO_RADIOBUTTON = 4;
        this.STYLE_BT_CHECK = 5;
        this.STYLE_SEEKBAR = 6;
        this.mContext = context;
        init(context);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEnable = true;
        this.style_id = 1;
        this.item_seekbarMax = 100;
        this.item_seekbarPos = 50;
        this.STYLE_ONLY_TITLE = 0;
        this.STYLE_LEFT_RIGHT_BUTTON = 1;
        this.STYLE_ONLY_CHECKBOX = 2;
        this.STYLE_ONLY_ONE_BUTTON = 3;
        this.STYLE_TWO_RADIOBUTTON = 4;
        this.STYLE_BT_CHECK = 5;
        this.STYLE_SEEKBAR = 6;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HeaderLayout);
        this.style_id = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.item_Drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        this.item_subTitle = typedArrayObtainStyledAttributes.getString(6);
        this.item_hintTitle = typedArrayObtainStyledAttributes.getString(1);
        int i = this.style_id;
        if (i == 4) {
            this.item_two_button_left = typedArrayObtainStyledAttributes.getString(7);
            this.item_two_button_right = typedArrayObtainStyledAttributes.getString(8);
        } else if (i == 5) {
            this.item_bt_check_btTitle = typedArrayObtainStyledAttributes.getString(0);
        } else if (i == 6) {
            this.item_seekbarMax = typedArrayObtainStyledAttributes.getInt(3, 100);
            this.item_seekbarPos = typedArrayObtainStyledAttributes.getInt(4, 50);
        }
        typedArrayObtainStyledAttributes.recycle();
        init(context);
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setEnabled(boolean z) {
        this.mEnable = z;
        this.mHeader.setEnabled(z);
        this.mSubTitle.setEnabled(this.mEnable);
        this.mHintTitle.setEnabled(this.mEnable);
        Button button = this.mOnlyOneButton;
        if (button != null) {
            button.setEnabled(this.mEnable);
        }
        super.setEnabled(z);
    }

    public void init(Context context) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.mInflater = layoutInflaterFrom;
        View viewInflate = layoutInflaterFrom.inflate(R.layout.item_parent, (ViewGroup) null);
        this.mHeader = viewInflate;
        addView(viewInflate);
        this.mView = (View) this.mHeader.getParent();
        initViews();
        init(this.style_id);
    }

    public void initViews() {
        this.mLayoutRightContainer = (LinearLayout) findViewByHeaderId(R.id.item_parent_right);
        this.mIcon = (ImageView) findViewByHeaderId(R.id.item_icon);
        this.mSubTitle = (TextView) findViewByHeaderId(R.id.item_sub_title);
        this.mHintTitle = (TextView) findViewByHeaderId(R.id.item_hint_title);
        setIcon(this.item_Drawable);
        setSubTitle(this.item_subTitle);
        setHintTitle(this.item_hintTitle);
        this.mHeader.setOnTouchListener(new View.OnTouchListener() { // from class: com.can.ui.draw.HeaderLayout.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (HeaderLayout.this.mOneButtonListener == null) {
                    return false;
                }
                HeaderLayout.this.mOneButtonListener.onOneButtonClick(HeaderLayout.this.mView, motionEvent);
                return false;
            }
        });
    }

    public View findViewByHeaderId(int i) {
        return this.mHeader.findViewById(i);
    }

    public void setSelected() {
        this.mHeader.setBackgroundResource(R.drawable.listbk_down);
    }

    public void init(int i) {
        switch (i) {
            case 0:
                defaultTitle();
                initOnlyRightText();
                break;
            case 1:
                defaultTitle();
                initLeftRightButton();
                break;
            case 2:
                defaultTitle();
                initOnlyCheckBox();
                break;
            case 3:
                defaultTitle();
                initOnlyOneButton();
                break;
            case 4:
                defaultTitle();
                titleTwoRadioButton();
                break;
            case 5:
                defaultTitle();
                initBtCheckLayout();
                break;
            case 6:
                defaultTitle();
                initSeekBarLayout();
                break;
        }
    }

    private void defaultTitle() {
        this.mLayoutRightContainer.removeAllViews();
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            this.mIcon.setVisibility(0);
            this.mIcon.setBackground(drawable);
        } else {
            this.mIcon.setVisibility(8);
        }
    }

    public void setRightTitle(CharSequence charSequence) {
        TextView textView = this.mRightTextTitle;
        if (textView == null || charSequence == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public void setSubTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.mSubTitle.setVisibility(0);
            this.mSubTitle.setText(charSequence);
        } else {
            this.mSubTitle.setVisibility(8);
        }
    }

    public void setHintTitle(CharSequence charSequence) {
        if (charSequence != null && this.style_id != 2) {
            this.mHintTitle.setVisibility(0);
            this.mHintTitle.setText(charSequence);
        } else {
            this.mHintTitle.setVisibility(8);
        }
    }

    public TextView getHintTitle() {
        return this.mHintTitle;
    }

    public void initOnlyRightText() {
        View viewInflate = this.mInflater.inflate(R.layout.item_only_right_text, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.mRightTextTitle = (TextView) viewInflate.findViewById(R.id.one_right_text);
    }

    public void initLeftRightButton() {
        View viewInflate = this.mInflater.inflate(R.layout.item_left_right_button, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.mLeftButton = (Button) viewInflate.findViewById(R.id.item_icon_left);
        this.mRightButton = (Button) viewInflate.findViewById(R.id.item_icon_right);
        this.mMiddleText = (TextView) viewInflate.findViewById(R.id.item_text_middle);
        this.mLeftButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.can.ui.draw.HeaderLayout.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (HeaderLayout.this.mTwoButtonListener == null) {
                    return false;
                }
                HeaderLayout.this.mTwoButtonListener.onLeftButtonClick(HeaderLayout.this.mView, motionEvent);
                return false;
            }
        });
        this.mRightButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.can.ui.draw.HeaderLayout.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (HeaderLayout.this.mTwoButtonListener == null) {
                    return false;
                }
                HeaderLayout.this.mTwoButtonListener.onRightButtonClick(HeaderLayout.this.mView, motionEvent);
                return false;
            }
        });
    }

    public TextView getMiddleTitle() {
        return this.mMiddleText;
    }

    public void setMiddleTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.mMiddleText.setVisibility(0);
            this.mMiddleText.setText(charSequence);
        } else {
            this.mMiddleText.setVisibility(4);
        }
    }

    public void setTwoButtonListener(onTwoButtonListener ontwobuttonlistener) {
        this.mTwoButtonListener = ontwobuttonlistener;
    }

    public void initBtCheckLayout() {
        View viewInflate = this.mInflater.inflate(R.layout.item_button_checkbox, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.mBtCheck_ck = (CheckBox) viewInflate.findViewById(R.id.item_bt_check_ck);
        Button button = (Button) viewInflate.findViewById(R.id.item_bt_check_bt);
        this.mBtCheck_bt = button;
        String str = this.item_bt_check_btTitle;
        if (str != null) {
            button.setText(str);
        }
        this.mBtCheck_ck.setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.draw.HeaderLayout.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.mBtCheck_bt.setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.draw.HeaderLayout.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
    }

    public void initOnlyCheckBox() {
        View viewInflate = this.mInflater.inflate(R.layout.item_one_checkbox, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.one_checkbox);
        this.mOneCheckBox = checkBox;
        checkBox.setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.draw.HeaderLayout.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HeaderLayout.this.mOneCheckListener != null) {
                    HeaderLayout.this.mOneCheckListener.onCheckout(HeaderLayout.this.mView, ((CheckBox) view).isChecked());
                }
            }
        });
    }

    public void setOneCheckBoxListener(onOneCheckBoxListener ononecheckboxlistener) {
        if (this.mOneCheckBox != null) {
            setOneCheckListener(ononecheckboxlistener);
        }
    }

    public void setOneCheckListener(onOneCheckBoxListener ononecheckboxlistener) {
        this.mOneCheckListener = ononecheckboxlistener;
    }

    public CheckBox getOneCheckBox() {
        return this.mOneCheckBox;
    }

    public void setPromptTitle(CharSequence charSequence) {
        TextView textView = this.mPrompt_title;
        if (textView == null) {
            return;
        }
        if (charSequence != null) {
            textView.setVisibility(0);
            this.mPrompt_title.setText(charSequence);
        } else {
            textView.setVisibility(8);
        }
    }

    public void setPromptTitle2(CharSequence charSequence) {
        TextView textView = this.mPrompt_title2;
        if (textView == null) {
            return;
        }
        if (charSequence != null) {
            textView.setVisibility(0);
            this.mPrompt_title2.setText(charSequence);
        } else {
            textView.setVisibility(8);
        }
    }

    public void initOnlyOneButton() {
        View viewInflate = this.mInflater.inflate(R.layout.item_only_right_button, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.mOnlyOneButton = (Button) viewInflate.findViewById(R.id.one_right_button);
        this.mPrompt_title = (TextView) viewInflate.findViewById(R.id.item_prompt_title);
        this.mPrompt_title2 = (TextView) viewInflate.findViewById(R.id.item_prompt_title2);
        this.mOnlyOneButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.can.ui.draw.HeaderLayout.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (HeaderLayout.this.mOneButtonListener == null) {
                    return false;
                }
                HeaderLayout.this.mOneButtonListener.onOneButtonClick(HeaderLayout.this.mView, motionEvent);
                return false;
            }
        });
    }

    public void setOneButtonListener(onOneButtonListener ononebuttonlistener) {
        this.mOneButtonListener = ononebuttonlistener;
    }

    public void titleTwoRadioButton() {
        View viewInflate = this.mInflater.inflate(R.layout.item_two_button, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.item_two_radioButton = (RadioGroup) viewInflate.findViewById(R.id.item_two_radioButton);
        this.mRadioButton1 = (RadioButton) viewInflate.findViewById(R.id.item_button_1);
        this.mRadioButton2 = (RadioButton) viewInflate.findViewById(R.id.item_button_2);
        String str = this.item_two_button_left;
        if (str != null) {
            this.mRadioButton1.setText(str);
        }
        String str2 = this.item_two_button_right;
        if (str2 != null) {
            this.mRadioButton2.setText(str2);
        }
        this.item_two_radioButton.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.can.ui.draw.HeaderLayout.8
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                HeaderLayout.this.item_two_radioButton.playSoundEffect(0);
                if (i == R.id.item_button_1) {
                    if (HeaderLayout.this.mTwoRadioListener != null) {
                        HeaderLayout.this.mTwoRadioListener.onLeftRadioButtonClick(HeaderLayout.this.mView);
                    }
                } else if (HeaderLayout.this.mTwoRadioListener != null) {
                    HeaderLayout.this.mTwoRadioListener.onRightRadioButtonClick(HeaderLayout.this.mView);
                }
            }
        });
    }

    public void setRadioButtonTitle(int i, int i2) {
        this.mRadioButton1.setText(i);
        this.mRadioButton2.setText(i2);
    }

    public void setRadioCheck(int i) {
        if (i == 1) {
            this.item_two_radioButton.check(this.mRadioButton1.getId());
        } else {
            this.item_two_radioButton.check(this.mRadioButton2.getId());
        }
    }

    public void setTwoRadioButtonListener(HeaderLayout headerLayout, onTwoRadioButtonListener ontworadiobuttonlistener) {
        if (this.item_two_radioButton != null) {
            setTwoRadioButtonListener(ontworadiobuttonlistener);
        }
    }

    public void setTwoRadioButtonListener(onTwoRadioButtonListener ontworadiobuttonlistener) {
        this.mTwoRadioListener = ontworadiobuttonlistener;
    }

    public void initSeekBarLayout() {
        View viewInflate = this.mInflater.inflate(R.layout.item_seekbar, (ViewGroup) null);
        this.mLayoutRightContainer.addView(viewInflate);
        this.mSeekbarTitle = (TextView) viewInflate.findViewById(R.id.item_seekbar_title);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.item_seekbar);
        this.mSeekBar = seekBar;
        seekBar.setMax(this.item_seekbarMax);
        setSeekbarPos(this.item_seekbarPos);
        setSeekbarText(this.item_seekbarPos);
        this.mSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.can.ui.draw.HeaderLayout.9
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (HeaderLayout.this.mOnProgressChange != null) {
                    HeaderLayout.this.mOnProgressChange.onProgressChanged(HeaderLayout.this.mView, seekBar2, i);
                }
            }
        });
    }

    public void setSeekbarMax(int i) {
        SeekBar seekBar = this.mSeekBar;
        if (seekBar != null) {
            this.item_seekbarMax = i;
            seekBar.setMax(i);
        }
    }

    public int getSeekbarMax() {
        SeekBar seekBar = this.mSeekBar;
        if (seekBar != null) {
            return seekBar.getMax();
        }
        return this.item_seekbarMax;
    }

    public void setSeekbarText(int i) {
        TextView textView = this.mSeekbarTitle;
        if (textView != null) {
            textView.setText(i + AppConfigParser.ITEM_TIP);
        }
    }

    public void setSeekbarPos(int i) {
        SeekBar seekBar = this.mSeekBar;
        if (seekBar != null) {
            seekBar.setProgress(i);
        }
    }

    public void setOnProgressChanged(onProgressChanged onprogresschanged) {
        this.mOnProgressChange = onprogresschanged;
    }
}
