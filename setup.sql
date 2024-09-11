CREATE OR REPLACE PROCEDURE DEPLOY_STREAMLIT_APP()
RETURNS STRING
LANGUAGE PYTHON
RUNTIME_VERSION = '3.8'
PACKAGES = ('streamlit')
HANDLER = 'run_streamlit'
AS
$$
import streamlit as st
import sys

def run_streamlit(session):
    # Set the title of the Streamlit app
    st.title("VAssist: Empowering all levels of your business with interactive data exploration")

    # Create the "CTA" section
    # st.write("**CTA: Get**")

    # Create the "Overview" section
    st.header("Overview")
    st.write("""
    VAssist is a game-changing business intelligence chat application powered by Snowflake Cortex LLM. It enables users at all levels of your organization to gain actionable insights from your database management and warehousing solutions instantly using simple conversational language. Compatible with major platforms like MySQL, Postgres, BigQuery, and Snowflake, VAssist eliminates the need for advanced querying knowledge, democratizing data access across your entire company.
    """)

    # Create the "Business Needs" section
    st.header("Business Needs")
    st.write("""
    Data-driven decision-making is crucial for organizations of all sizes and industries. However, extracting relevant insights from database management and warehousing platforms can be challenging and time-consuming for non-data scientists. VAssist addresses these pain points by:
    - Enhancing data accessibility through plain language queries
    - Enabling quick decision-making based on data, democratizing analytics through Natural Language Interfaces
    - Allowing non-technical members to obtain insights in seconds, regardless of data volume
    - Visualizing data in engaging, easy-to-understand graphical formats
    - Fostering unparalleled collaboration across teams with transparent analytics

    VAssist empowers businesses to:
    - Identify and resolve avoidable operational issues
    - Uncover patterns in customer sentiment to boost sales
    - Discover new opportunities
    - Discern common problem patterns from customer support requests
    - Enable employees to streamline their work using data-driven insights
    """)

    # Add "Usage examples" placeholder
    st.header("Usage examples")
    st.write("To be added later.")

    # Add "Chat with Snowflake Cortex LLM" placeholder
    st.header("Chat with Snowflake Cortex LLM")
    st.write("Code/instructions to be added later.")

    # Add "Input natural language query" placeholder
    st.header("Input natural language query")
    st.write("Code/instructions to be added later.")

    # Add "SQL query conversion" placeholder
    st.header("Snowflake Cortex LLM will turn it into a SQL query")
    st.write("Code/instructions to be added later.")

    # Add "Dashboard Visualization" placeholder
    st.header("VAssist will show a dashboard where non-technical users can visualize data")
    st.write("Code/instructions/image to be added later.")

    # Create the "Security" section
    st.header("Security")
    st.write("""
    - Role-based access control ensures data protection within Snowflake
    - SOX-compliant guaranteeing the highest standards of data security and privacy
    - End-to-end encryption for all data in transit and at rest
    - Regular security audits and penetration testing to maintain robust security measures
    - Compliance with GDPR, HIPAA, and other relevant data protection regulations
    - Multi-factor authentication (MFA) for enhanced user access security
    - Detailed audit logs for comprehensive tracking of all system activities
    - No data stored outside of your Snowflake environment, maintaining data sovereignty
    """)

    # Add Categories section
    st.write("**Categories:**")
    st.write("AI & ML, Data Analytics, Business Intelligence, Cloud Computing, Data Visualization, Natural Language Processing, Database Management, Enterprise Software")

    # Add Documentation placeholder
    st.write("**Documentation (to be added)**")

    # Create the "Contact" section
    st.header("Contact")
    st.write("""
    **HEADQUARTERS**  
    1900 Camden Ave, Suite 101, San Jose, CA - 95124  
    USA  
    +1 (408) 371-6666  
    sales@enlume.com
    """)

    # Add the "About EnLume" section
    st.header("About EnLume")
    st.write("""
    EnLume (https://www.enlume.com/) is a trusted partner for AI, Data, and Cloud Solutions, driving innovation and growth through expertise in emerging technologies. We design modern software platforms with a focus on agility, quality, and cultural alignment.

    As an AWS Advanced Consulting Partner, Snowflake Select Partner, and ISO 9001:2015 certified company, EnLume collaborates with high-growth startups and small and mid-sized enterprises to create tailored digital products that solve real problems. 

    Learn more about VAssist: https://www.enlume.com/innovation/v-assist/
    """)

    return "Streamlit app deployed successfully"
$$;